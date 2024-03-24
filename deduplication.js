/*
Script Name: deduplication.js
Author: Tamer Hellah
Date: 19-2-2024
Version: 1.0
Description: This script is designed to remove duplicate lines from a specified input file.
*/

const readline = require('readline');
const fs = require('fs');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Enter the path to the input file: ", (inputFile) => {
  rl.close();

  fs.readFile(inputFile, 'utf8', (err, data) => {
    if (err) {
      console.error(`Error: The file '${inputFile}' does not exist.`);
      process.exit(1);
    }

    const lines = data.split('\n');
    const uniqueLines = [...new Set(lines)];

    fs.writeFile(inputFile, uniqueLines.join('\n'), 'utf8', (err) => {
      if (err) {
        console.error("Error writing to file:", err);
        process.exit(1);
      }
      console.log(`Duplicates removed successfully in the input file: ${inputFile}`);
    });
  });
});
