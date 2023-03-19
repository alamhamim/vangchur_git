#!/bin/bash
#Funny msg for git commit -m 
commit_msg = $(fortune)

# Define the 'vangchur' alias with the generated commit message
git config --global alias.vangchur "!git add . && git commit -m \"$commit_msg\" && git push"

# Print a message to let the user know the alias has been created
echo "The 'vangchur' alias has been created with the following commit message:"
echo "$commit_msg"
