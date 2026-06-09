#!/bin/bash

LOG_FILE=$1

echo "==== AI ANALYSIS START ===="

response=$(curl -s https://api.openai.com/v1/chat/completions \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gpt-4.1-mini",
    "messages": [
      {
        "role": "system",
        "content": "You are a DevOps engineer. Analyze logs and give root cause and fix."
      },
      {
        "role": "user",
        "content": "'"$(tail -n 200 $LOG_FILE | sed 's/"/\\"/g')"'"
      }
    ]
  }')

echo "$response"
