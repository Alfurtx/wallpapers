#!/bin/bash

COUNT=0

for file in ~/pictures/wallpapers/*.jpg; do
    while [[ -e "$COUNT.jpg" ]]; do
        COUNT=$((COUNT + 1))
    done
    mv $file "${COUNT}.jpg"
    COUNT=$((COUNT + 1))
done

for file in ~/pictures/wallpapers/*.png; do
    while [[ -e "$COUNT.png" ]]; do
        COUNT=$((COUNT + 1))
    done
    mv $file "${COUNT}.png"
done
