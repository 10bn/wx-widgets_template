#!/bin/bash

echo "Gathering system information for wxWidgets configuration..."

# wxWidgets installation path via Homebrew
echo "1. wxWidgets installation path via Homebrew:"
brew --prefix wxwidgets

# wx-config path
echo -e "\n2. wx-config path:"
which wx-config

# wxWidgets version
echo -e "\n3. wxWidgets version:"
wx-config --version

# Compiler version
echo -e "\n4. Compiler version (gcc):"
gcc --version

# C++ compiler version (g++)
echo -e "\n5. C++ compiler version (g++):"
g++ --version

# Clang version
echo -e "\n6. Clang version:"
clang --version

# Default compiler paths
echo -e "\n7. Default compiler paths:"
echo "gcc path: $(which gcc)"
echo "g++ path: $(which g++)"
echo "clang path: $(which clang)"

# VSCode version
echo -e "\n8. VSCode version:"
code --version

# Available macOS SDKs
echo -e "\n9. Available macOS SDKs:"
xcodebuild -showsdks

# System PATH environment variable
echo -e "\n10. System PATH environment variable:"
echo $PATH

# Homebrew installed packages
echo -e "\n11. Homebrew installed packages:"
brew list --formula

# Environment variables related to wxWidgets
echo -e "\n12. Environment variables related to wxWidgets:"
env | grep -i wx

# Include paths from wx-config
echo -e "\n13. wxWidgets include paths (wx-config --cxxflags):"
wx-config --cxxflags

# Library paths from wx-config
echo -e "\n14. wxWidgets library paths (wx-config --libs):"
wx-config --libs
 u  /
# macOS version
echo -e "\n15. macOS version:"
sw_vers

# Xcode Command Line Tools version
echo -e "\n16. Xcode Command Line Tools version:"
xcode-select --version

echo -e "\nInformation gathering complete."
