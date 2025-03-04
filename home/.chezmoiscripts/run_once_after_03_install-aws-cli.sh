#!/bin/bash

deps=$(brew deps awscli)

version=$(echo "$deps" | grep -oE 'python@[0-9]+\.[0-9]+' | cut -d'@' -f2)

if command -v python$version &> /dev/null; then
  if ! command -v aws &> /dev/null; then
    brew install awscli@2
    brew unlink python@$version
  else
    exit 0
  fi
else
  echo "Unable to install AWS CLI. python$version is not available."
  echo "Aborting to prevent Homebrew polluting Python versions."
  exit 1
fi
