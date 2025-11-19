#!/bin/sh
# Wait for Uptime Kuma to initialize
sleep 10

# Import monitors from JSON
node /app/server/import.js /init/monitors.json

sleep 10

# Create a public status page via API
curl -X POST http://localhost:3001/api/status-page/add \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Public Status",
    "slug": "default",
    "theme": "light",
    "showTags": true,
    "published": true,
    "monitors": [1,2]
  }'