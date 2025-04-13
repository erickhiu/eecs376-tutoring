#!/bin/bash

# Move to the book directory
cd book || exit

# Function to build the book
build_book() {
  echo "Rebuilding book..."
  jupyter-book build . --quiet
  echo "Build complete."
}

# Initial build
build_book

# Kill any process using port 8000
PORT=8000
PID=$(lsof -ti tcp:$PORT)
if [ -n "$PID" ]; then
  echo "Port $PORT is in use by PID $PID. Terminating..."
  kill -9 $PID
fi

# Start a static HTTP server (no livereload)
cd _build/html || exit
echo "Serving book at http://localhost:$PORT/"
python3 -m http.server $PORT &
cd ../..

# Watch source directory and rebuild on changes
watchmedo shell-command \
  --patterns="*.md;*.ipynb;*.py;_config.yml" \
  --recursive \
  --command='echo "Detected change. Rebuilding..."; jupyter-book build . --quiet' \
  .
