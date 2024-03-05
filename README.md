# 🛠️ Setup Script for Git and SSH

This Bash script automates the setup process for Git and SSH on a Debian-based system. It includes steps for configuring Git, setting up SSH keys, and optionally adding them to GitHub or GitLab.

## 🚀 Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/smazmi/git-setup
   cd git-setup
   ```
2. Run the script:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```
3. Follow the prompts to configure Git, set up SSH keys, and optionally add them to GitHub or GitLab.
4. Run `ssh -T git@github.com` to [verify the key is recognized and working with GitHub.com](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints).
5. Run `ssh -T git@gitlab.com` to verify the key is recognized and working with GitLab.
  
## ⚙️ System Requirements

- Debian-based system
- Bash shell

