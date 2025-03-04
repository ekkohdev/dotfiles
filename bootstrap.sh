#!/bin/bash

set -e

echo
echo "Dotfiles Bootstrap for ekkohdev/dotfiles"

echo
echo "Installing Xcode command line tools..."
if ! out=$(xcode-select --install 2>&1) && [[ $out != *"Command line tools are already installed."* ]]; then
  echo "$out"
  exit 1
else
  echo "Xcode command line tools are already installed."
fi

echo
echo "Installing Homebrew..."
if which -s brew; then
    echo 'Homebrew is already installed.'
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo
echo "Installing Git..."
brew install git

echo
echo "Installing Chezmoi..."
brew install chezmoi

echo
echo "Initialising Chezmoi..."
chezmoi init ekkohdev
chezmoi apply

echo
echo "Bootstrap for ekkohdev/dotfiles complete!"
