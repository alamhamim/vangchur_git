#!/bin/bash

# Generate a random commit message using fortune
commit_msg="We Had To Use Dark Magic To Make This Work!!! Ohh Hey It works!!!"

# Check the user's shell and update the appropriate configuration file
if [[ "$SHELL" == "/bin/bash" ]]; then
  echo "alias git_vangchur='git add . && git commit -m \"$commit_msg\" && git push'" >> ~/.bashrc
  source ~/.bashrc
elif [[ "$SHELL" == "/bin/zsh" ]]; then
  echo "alias git_vangchur='git add . && git commit -m \"$commit_msg\" && git push'" >> ~/.zshrc
  source ~/.zshrc
elif [[ "$SHELL" == "/bin/sh" ]] || [[ "$SHELL" == "/usr/bin/sh" ]]; then
  echo "alias git_vangchur='git add . && git commit -m \"$commit_msg\" && git push'" >> ~/.bash_profile
  source ~/.bash_profile
else
  echo "Your Machine Sucks!!! Get a new one!!!"
fi

# Print a message to let the user know the alias has been created
echo "The 'git_vangchur' alias has been created with the following commit message:"
echo "$commit_msg"
echo "Thank you for installing this stupid project!!! Have fun!!!"

# adding develop branch
