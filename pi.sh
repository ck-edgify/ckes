#!/bin/bash

# Change directory to /edgify_agent/images
cd /edgify_agent/images || exit

# Array of image URLs
images=(
    "https://github.com/ck-edgify/ckes/raw/main/DarkEnergy.png"
    "https://github.com/ck-edgify/ckes/raw/main/ElectricEnergy.png"
    "https://github.com/ck-edgify/ckes/raw/main/FightingEnergy.png"
    "https://github.com/ck-edgify/ckes/raw/main/FireEnergy.png"
    "https://github.com/ck-edgify/ckes/raw/main/GrassEnergy.png"
    "https://github.com/ck-edgify/ckes/raw/main/PsychicEnergy.png"
    "https://github.com/ck-edgify/ckes/raw/main/ShinxCard.png"
    "https://github.com/ck-edgify/ckes/raw/main/ShinxCardBlackDot.png"
)

# Loop through each image URL and download it
for url in "${images[@]}"; do
    sudo wget -q --show-progress "$url"
done

echo "All files downloaded successfully."
