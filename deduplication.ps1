<# 
.NOTES 
===========================================================================
Script Name: deduplication.ps1 
Author: Tamer Hellah 
Date: 10-3-2024
Version: 1.0 
Description: This script is designed to remove duplicate lines from a specified input file.
=========================================================================== 
#>

$inputFile = Read-Host "Enter the path to the input file"

if (-not (Test-Path $inputFile -PathType Leaf)) {
    Write-Output "Error: The file '$inputFile' does not exist."
    exit 1
}

Get-Content $inputFile | Select-Object -Unique | Set-Content $inputFile

Write-Output "Duplicates removed successfully in the input file: $inputFile"
