#!/usr/bin/env bash
# Generate Pitchcraft walkthrough narration with ElevenLabs.
# Usage (run from the walkthrough/ folder):
#   XI_API_KEY="your_key" VOICE_ID="your_voice_id" ./generate-narration.sh
# Optional: MODEL="eleven_turbo_v2_5" (cheaper) — defaults to eleven_multilingual_v2 (higher quality).
# Requires: curl + python3 (both ship with macOS).

set -euo pipefail
: "${XI_API_KEY:?Set XI_API_KEY (ElevenLabs API key)}"
: "${VOICE_ID:?Set VOICE_ID (ElevenLabs voice id)}"
MODEL="${MODEL:-eleven_multilingual_v2}"
mkdir -p audio

texts=(
"This is Pitchcraft. It's just a folder, but it turns a customer's discovery call into a tailored, working demo."
"Here's my problem. I'm a solutions engineer, and I hand-build a demo for nearly every prospect, straight from the call. Three to five hours each. Under deadline I fall back on a generic template, and it lands flat."
"So I built the folder I wish I had. I drop a transcript in, it does what I do, in order, and produces a demo I can actually send."
"The method is generic. What makes it mine is the knowledge in the reference folder, the playbook mapping customer pain to capability. Swap that folder, and you point Pitchcraft at a completely different product."
"Under the hood it's six stages. Triage the call, extract the workflow, map the opportunity, plan the demo, build the assets, write the preview. Stage three is the gate, where pain meets capability, honestly."
"Using it is one action. I open Claude Code in the folder and paste the transcript. No prompt, no setup. It runs every stage and writes the files."
"And it reasons, it doesn't repeat. One call leads with a medical necessity checklist; another leads with intake triage. It quotes the customer's own words, and it's honest about the limits."
"The payoff is a one-page preview I send before the meeting. The prospect sees their own workflow, solved, on their own kind of case."
"Pitchcraft. A real problem, scoped and shipped as a folder."
)

i=1
for t in "${texts[@]}"; do
  echo "Generating scene ${i}/9 ..."
  payload="$(python3 -c 'import json,sys; print(json.dumps({"text":sys.argv[1],"model_id":sys.argv[2],"voice_settings":{"stability":0.45,"similarity_boost":0.8,"use_speaker_boost":True}}))' "$t" "$MODEL")"
  curl -sS -X POST "https://api.elevenlabs.io/v1/text-to-speech/${VOICE_ID}" \
    -H "xi-api-key: ${XI_API_KEY}" \
    -H "Content-Type: application/json" \
    -H "Accept: audio/mpeg" \
    -d "$payload" \
    --output "audio/scene${i}.mp3"
  # surface API errors (a JSON error body lands in the .mp3 if something's wrong)
  if file "audio/scene${i}.mp3" | grep -qi "text\|JSON"; then
    echo "  ! scene${i}.mp3 looks like an error response:"; cat "audio/scene${i}.mp3"; echo; exit 1
  fi
  i=$((i+1))
done
echo "Done -> audio/scene1.mp3 .. scene9.mp3"
