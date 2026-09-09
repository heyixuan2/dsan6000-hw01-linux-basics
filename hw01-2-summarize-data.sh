#!/bin/bash

# The summary file lives in the repo root
OUTPUT="wikimedia_data_summary.csv"

# Write the header row
echo "filename,size,num_lines" > "$OUTPUT"

# Loop over every .csv file in the data subdirectory
for f in data/*.csv; do
    name=$(basename "$f")
    size=$(ls -lh "$f" | awk '{print $5}')
    lines=$(wc -l < "$f")
    echo "$name,$size,$lines" >> "$OUTPUT"
done

