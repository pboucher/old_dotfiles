#!/bin/sh

if ! which brew 2>&1 1>/dev/null; then
  echo "Installing Homebrew"
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi

echo "Updating Homebrew"
brew update

echo "Installing Homebrew/Cask/Mas packages"
brew bundle --file=${BASH_SOURCE%/*}/Brewfile
