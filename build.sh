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

# Start livereload in background
cd _build/html || exit
echo "Serving book at http://localhost:8000/"
livereload . -p 8000 &
cd ../..

# Watch source directory and rebuild on changes
watchmedo shell-command \
  --patterns="*.md;*.ipynb;*.py;_config.yml" \
  --recursive \
  --command='echo "Detected change. Rebuilding..."; jupyter-book build . --quiet' \
  .
