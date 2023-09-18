#!/usr/bin/env zsh

# Setting zshrc
# Usage
# {
#     "postCreateCommand": "/home/vscode/scripts/source-all-aliases.sh"
# }


# Write the loop to .zshrc
cat <<EOF >> ~/.zshrc
dir=/home/vscode/aliases

for file in "\$dir"/*; do
  # Check if the file is a regular file and is readable
  if [[ -f "\$file" && -r "\$file" ]]; then
    source "\$file"
  fi
done
EOF

source ~/.zshrc