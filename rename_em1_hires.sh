#!/bin/zsh

# Loop through files in the current directory with the .ORI extension
for file in *.ORI; do
  # Skip if no files match
  if [[ ! -e "$file" ]]; then
    echo "No .ORI files found in the current directory -- no action taken"
    exit 1
  fi

  # Extract the part of the filename before the .ORI extension
  base_name="${file%.ORI}"

  # Create the new filename by appending _20MP.ORF
  new_name="${base_name}_20MP.ORF"

  # Rename the .ORI file
  mv "$file" "$new_name"
  echo "Renamed: $file --> $new_name"

  # Optional (uncomment if needed): Find and delete JPGs generated by the high-res mode
  # Find the corresponding .JPG file
  # jpg_file="${base_name}.JPG"

  # If the .JPG file exists, move it to the Trash
  # if [[ -f "$jpg_file" ]]; then
  #  rm "$jpg_file"
  #  echo "Deleted: $jpg_file"
  # fi
done