#!/bin/bash
echo "Starting WeatherWise App..."

cd "$(dirname "$0")"

npm install
npm run dev &

# Give the dev server a couple of seconds to boot
sleep 3

# Open in browser (mac uses 'open', Linux often uses 'xdg-open')
if [[ "$OSTYPE" == "darwin"* ]]; then
  open http://localhost:5173/
else
  xdg-open http://localhost:5173/
fi
