#!/bin/bash

set -e

# Define source and destination directories
SRC_DIR="src"
DIST_DIR="dist"

# Clear dist folder
echo "Cleaning $DIST_DIR..."
rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR/.well-known"

# Copy top-level files
echo "Copying static files..."
cp "$SRC_DIR/openapi.yaml" "$DIST_DIR/"
cp "$SRC_DIR/index.html" "$DIST_DIR/"
cp "$SRC_DIR/logo.png" "$DIST_DIR/"
cp "$SRC_DIR/.well-known/ai-plugin.json" "$DIST_DIR/.well-known/"

echo "Build complete: contents copied to $DIST_DIR"
