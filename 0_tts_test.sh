chmod +x 0_tts_test.sh

# load my API key from .env file
source .env

curl -s -X POST "https://api.openai.com/v1/audio/speech" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -H "Content-Type: application/json" \
    -d '{
        "model": "gpt-4o-mini-tts",
        "voice": "alloy",
        "input": "Hello my name is Jordan and I am testing text to speech."
        }' \
    --output tts_output.mp3
