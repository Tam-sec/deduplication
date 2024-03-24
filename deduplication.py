"""
Script Name: deduplication.py
Author: Tamer Hellah
Date: 20/3/2024
Version: 1.0
Description: This script is designed to remove duplicate lines from a specified input file.
"""

input_file = input("Enter the path to the input file: ")

try:
    with open(input_file, 'r') as file:
        lines = file.readlines()
except FileNotFoundError:
    print(f"Error: The file '{input_file}' does not exist.")
    exit(1)

unique_lines = list(set(lines))

with open(input_file, 'w') as file:
    file.writelines(unique_lines)

print(f"Duplicates removed successfully in the input file: {input_file}")
