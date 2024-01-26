#!/bin/bash

# ASCII Art
echo "
███████╗ █████╗ ██████╗ ██╗ ██████╗ ██╗   ██╗███████╗
██╔════╝██╔══██╗██╔══██╗██║██╔═══██╗██║   ██║██╔════╝
███████╗███████║██║  ██║██║██║   ██║██║   ██║█████╗  
╚════██║██╔══██║██║  ██║██║██║▄▄ ██║██║   ██║██╔══╝  
███████║██║  ██║██████╔╝██║╚██████╔╝╚██████╔╝███████╗
╚══════╝╚═╝  ╚═╝╚═════╝ ╚═╝ ╚══▀▀═╝  ╚═════╝ ╚══════╝
                                                     
 █████╗ ███████╗███╗   ███╗██╗                       
██╔══██╗╚══███╔╝████╗ ████║██║                       
███████║  ███╔╝ ██╔████╔██║██║                       
██╔══██║ ███╔╝  ██║╚██╔╝██║██║                       
██║  ██║███████╗██║ ╚═╝ ██║██║                       
╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚═╝                       
"

# GitHub profile
echo "GitHub Profile: https://github.com/smazmi"
echo
echo --------------------------------------------
# Step 1: Install Git (Assuming you are on a Debian-based system, modify if necessary)
sudo apt-get update
sudo apt-get install git -y

# Step 2: Configure Git
echo "Configuring Git..."
read -p "Enter your name: " git_name
read -p "Enter your email: " git_email

git config --global user.name "$git_name"
git config --global user.email "$git_email"

echo "Git configured successfully."

# Step 3: Set up SSH Key for GitHub (Optional but recommended)
read -p "Do you want to set up SSH key for GitHub? (y/n): " setup_github

if [ "$setup_github" == "y" ]; then
    echo "Setting up SSH key for GitHub..."
    read -p "Enter your email for GitHub SSH key: " github_email

    ssh-keygen -t rsa -b 4096 -C "$github_email"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa

    # Display the SSH key for the user to copy
    echo -e "\nYour GitHub SSH key is:"
    cat ~/.ssh/id_rsa.pub

    # Add SSH Key to GitHub
    cat ~/.ssh/id_rsa.pub | xclip -selection clipboard  # Copy to clipboard
    echo -e "\nGitHub SSH key copied to clipboard. Add it to your GitHub account."
else
    echo "GitHub SSH key not set up. You can do this manually later."
fi

# Step 4: Set up SSH Key for GitLab (Optional but recommended)
read -p "Do you want to set up SSH key for GitLab? (y/n): " setup_gitlab

if [ "$setup_gitlab" == "y" ]; then
    echo "Setting up SSH key for GitLab..."
    read -p "Enter your email for GitLab SSH key: " gitlab_email

    ssh-keygen -t rsa -b 4096 -C "$gitlab_email"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa

    # Display the SSH key for the user to copy
    echo -e "\nYour GitLab SSH key is:"
    cat ~/.ssh/id_rsa.pub

    # Add SSH Key to GitLab
    cat ~/.ssh/id_rsa.pub | xclip -selection clipboard  # Copy to clipboard
    echo -e "\nGitLab SSH key copied to clipboard. Add it to your GitLab account."
else
    echo "GitLab SSH key not set up. You can do this manually later."
fi

echo "Setup complete!"
