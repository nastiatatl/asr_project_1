#!/bin/bash

input_folder="/mnt/c/Users/18573/Desktop/COSI 136 ASR/project 1/wav"
output_folder="/mnt/c/Users/18573/Desktop/COSI 136 ASR/project 1/wav_resampled"

mkdir -p "$output_folder"

for file in "$input_folder"/*.wav; do
    filename=$(basename "$file")
    output_file="$output_folder/${filename%.*}_resampled.wav"
    sox "$file" -r 16000 -c 1 "$output_file"
done
