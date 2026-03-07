#!/bin/bash
# Tavily Search Helper for CareAtlas Literature Review

API_KEY="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"

if [ $# -eq 0 ]; then
    echo "Usage: ./tavily_search.sh 'your search query'"
    exit 1
fi

QUERY="$1"

curl -s "https://api.tavily.com/search" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY" \
  -d "{
    \"query\": \"$QUERY\",
    \"search_depth\": \"advanced\",
    \"max_results\": 10,
    \"include_raw_content\": true
  }"