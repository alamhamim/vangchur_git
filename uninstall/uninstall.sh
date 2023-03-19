#!/bin/bash

# Check the user's shell and remove the 'git_vangchur' alias from the appropriate configuration file
if [[ "$SHELL" == "/bin/bash" ]]; then
  sed -i '/alias git_vangchur=/d' ~/.bashrc
elif [[ "$SHELL" == "/bin/zsh" ]]; then
  sed -i '/alias git_vangchur=/d' ~/.zshrc
elif [[ "$SHELL" == "/bin/sh" ]] || [[ "$SHELL" == "/usr/bin/sh" ]]; then
  sed -i '/alias git_vangchur=/d' ~/.bash_profile
else
  echo "Unable to determine shell. Please remove the 'git_vangchur' alias from your shell configuration file manually."
fi

# Print a message to let the user know the alias has been removed
echo "The 'git_vangchur' alias has been removed from your shell configuration file."
echo "Thanks you very much for using this piece of shit :)"
