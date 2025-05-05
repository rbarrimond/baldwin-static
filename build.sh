#!/bin/bash

set -e

# Define source and destination directories
SRC_DIR="src"
DIST_DIR="dist"

# Clear dist folder
echo "Cleaning $DIST_DIR..."
rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR/.well-known"

# Copy all files and directories from src to dist, preserving structure
echo "Copying static files..."
cp -r "$SRC_DIR/"* "$DIST_DIR/"

# Ensure .well-known directory is properly handled
mkdir -p "$DIST_DIR/.well-known"
cp "$SRC_DIR/.well-known/ai-plugin.json" "$DIST_DIR/.well-known/"

echo "Build complete: contents copied to $DIST_DIR"
