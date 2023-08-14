#!/bin/bash

# Check if VS Code command-line tool (code) is available
if command -v code &> /dev/null; then
    # Replace "/path/to/your/folder" with the actual folder path
    folder_path="/c/FxM/xyz22"

    # Open the folder in VS Code
    # code "$folder_path"
else
    echo "Visual Studio Code is not installed or not in PATH."
fi

code "C:\FxM\xyz22\one"
code "C:\FxM\xyz22\two"
# code "/c/FxM/xyz22"
# code "/c/FxM/xyz22"
# rootFolder="/c/FxM/xyz22"
# repos=(
#     "https://github.com/mastronardif/myapp22.git $rootFolder/one   main"
