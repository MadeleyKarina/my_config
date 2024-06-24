#!/bin/bash

echo "This script will install Homebrew, Docker Desktop (if not already installed), iTerm2 (if not already installed), and Oh My Zsh."

# Install Homebrew (if not already installed)
if ! command -v brew &> /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed."
fi

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Check for Docker existence
if ! command -v docker &> /dev/null; then
  echo "Docker not found. Installing Docker Desktop..."
  brew install --cask docker
else
  echo "Docker already installed."
fi

# Check for iTerm2 existence (not working)
if ! which iterm2 &> /dev/null; then  # Use 'which' instead of 'command -v'
  echo "iTerm2 not found. Installing iTerm2..."
  brew install --cask iterm2
else
  echo "iTerm2 already installed."
fi

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/ohmyzsh/HEAD/tools/install.sh)"

# Inform about text color change
echo "Text color cannot be directly set through a script, but you can customize it in iTerm2 preferences or through Oh My Zsh themes."

#Download and install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# Verify nvm installation
echo "To verify nvm installation: command -v nvm" 

# Run this command if have problems wiht denied access
sudo chmod 777 ~/.nvm

echo "Installing Node.js version: $latest_lts_version"
nvm install stable
nvm use node
# Verify Node.js installation
echo "To verify node installation:  node -v"

echo "nvm and Node.js installation complete!"

# Install VSCode
if !command -v code &> /dev/null; then
  echo "VS code not found. Installing VSCode..."
  brew install --cask visual-studio-code
else
  echo "VSCode already installed."

echo "All done! Please follow the instructions for customizing text color and explore Oh My Zsh themes for further personalization."

