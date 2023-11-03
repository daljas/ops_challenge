#!/bin/bash

# Prompt the user to enter the source folder path
read -p "Enter the source folder path: " sourcePath

# Prompt the user to enter the destination folder path
read -p "Enter the destination folder path: " destinationPath

# Check if the source folder exists
if [ ! -d "$sourcePath" ]; then
  echo "Error: Source folder does not exist."
  exit 1
fi

# Check if the destination folder exists
if [ ! -d "$destinationPath" ]; then
  echo "Error: Destination folder does not exist."
  exit 1
fi

# Use rsync to copy the contents of the source folder to the destination folder
rsync -av "$sourcePath/" "$destinationPath/"

# Check the exit status of rsync to detect errors
if [ $? -ne 0 ]; then
  echo "Error: rsync encountered errors during the copy operation."
else
  echo "Copy operation completed successfully."
fi