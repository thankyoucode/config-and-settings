# 04_config-and-settings

This repository contains configuration and settings files for different tools, including **Git Bash** and **Visual Studio Code (VSCode)**. These configurations help create a customized and improved development environment.

## Directory Structure

```plaintext
.
├── git-bash/
│   ├── .bash_profile
│   ├── .bashrc
│   └── .vimrc
├── readme.md
└── vscode/
    ├── MyVSCodeProfile.code-profile
    └── settings.json
```

### `git-bash/`

Contains configuration files for **Git Bash**:

- **`.bash_profile`**: Custom shell profile settings for Git Bash. This file is executed when a login shell is started. It is used to configure environment variables, paths, and shell options.
- **`.bashrc`**: Bash runtime configuration file. It is executed for non-login interactive shells and is often used to configure the shell prompt, aliases, and functions.
- **`.vimrc`**: Configuration file for **Vim** editor. It customizes Vim's behavior and appearance, such as setting key bindings, themes, and other preferences.

### `vscode/`

Contains the configuration files for **Visual Studio Code**:

- **`MyVSCodeProfile.code-profile`**: A custom VSCode profile configuration for workspace-specific settings.
- **`settings.json`**: VSCode global user settings, including editor preferences, themes, and extensions.

## Purpose

- **Git Bash Configuration**: The `.bash_profile`, `.bashrc`, and `.vimrc` files configure the shell environment and editor for Git Bash. These customizations include setting up the prompt, defining aliases, and customizing Vim for a smoother development experience.
- **VSCode Configuration**: The `settings.json` file defines VSCode's global settings, such as themes and editor preferences. The `MyVSCodeProfile.code-profile` file allows you to configure workspace-specific settings and extensions.

## Installation

### Git Bash Configuration:

1. Download and install [Git Bash](https://git-scm.com).
2. Copy the following files into your home directory (typically `~`):
   - **`.bash_profile`**
   - **`.bashrc`**
   - **`.vimrc`**
3. These files will automatically configure Git Bash to enhance your terminal prompt, aliases, and editor.

### Visual Studio Code Configuration:

1. Install [Visual Studio Code](https://code.visualstudio.com).
2. Copy the `settings.json` and `MyVSCodeProfile.code-profile` files into the appropriate directories:
   - `settings.json` should be placed in the `.vscode` folder or the global configuration directory (`~/.config/Code/User/` on Linux/macOS, `%APPDATA%\Code\User\` on Windows).
   - `MyVSCodeProfile.code-profile` can be used to set up a custom VSCode profile with workspace-specific settings.

## Usage

- **Git Bash**: Once configured, the `.bash_profile` and `.bashrc` files will configure your environment, set up the prompt, and define aliases for common Git commands. The `.vimrc` file customizes Vim for easier text editing.
- **VSCode**: The `settings.json` file will apply your desired editor settings (e.g., font size, theme, and layout), while the `MyVSCodeProfile.code-profile` file can be used to switch to a specific profile with predefined workspace settings and extensions.

## Contribution

Feel free to fork this repository and submit pull requests with improvements to the configuration files.
