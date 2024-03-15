#!/bin/bash

# Create directory if it doesn't exist
sudo mkdir -p /edgify_agent/images

# Change directory to /edgify_agent/images
cd /edgify_agent/images || exit

# Array of image URLs
images=(
    "https://github.com/ck-edgify/ckes/raw/main/apple-rd.jpg"
    "https://github.com/ck-edgify/ckes/raw/main/lucozade.jpg"
    "https://github.com/ck-edgify/ckes/raw/main/penguin.png"
    "https://github.com/ck-edgify/ckes/raw/main/plushie.png"
    "https://github.com/ck-edgify/ckes/raw/main/puzzle.png"
    "https://github.com/ck-edgify/ckes/raw/main/scrumbles-chicken.jpg"
    "https://github.com/ck-edgify/ckes/raw/main/scrumbles-salmon.jpg"
)

# Loop through each image URL and download it
for url in "${images[@]}"; do
    sudo wget -q --show-progress "$url"
done

echo "All files downloaded successfully."

# Create an empty config.json file
cd /edgify_agent || exit
sudo touch config.json

echo "config.json created successfully."
