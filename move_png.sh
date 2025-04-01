#!/bin/bash

# Define source and destination directories
SOURCE_DIR="/Users/danherman/Desktop/mathematics-for-ds"
DEST_DIR="/Users/danherman/Desktop/mathematics-for-ds/images"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory does not exist: $SOURCE_DIR"
  exit 1
fi

# Check if destination directory exists, create it if it doesn't
if [ ! -d "$DEST_DIR" ]; then
  echo "Destination directory does not exist. Creating: $DEST_DIR"
  mkdir -p "$DEST_DIR"
fi

# Move all .png files from source to destination
mv "$SOURCE_DIR"/*.png "$DEST_DIR"

# Confirm completion
echo "All .png files have been moved from $SOURCE_DIR to $DEST_DIR."
