#!/usr/bin/env bash
set -euo pipefail

extension_dir=".vscode/j-language-support"
package_file=$(mktemp --suffix=.vsix)
trap 'rm -f "$package_file"' EXIT

(cd "$extension_dir" && npx --yes @vscode/vsce package --out "$package_file" --allow-missing-repository --skip-license)
code --install-extension "$package_file" --force