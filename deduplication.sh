#!/bin/bash

# Script Name: deduplication.sh
# Author: Tamer Hellah
# Date: 21/3/2024
# Version: 1.0
# Description: This script is designed to remove duplicate lines from a specified input file.

read -p "Enter the path to the input file: " input_file

if [ ! -f "$input_file" ]; then
    echo "File not found!"
    exit 1
fi

sort -u "$input_file" -o "$input_file"

echo "Duplicates removed successfully in the input file!"
