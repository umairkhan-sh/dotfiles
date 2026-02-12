# dotfiles

A collection of configuration files for my Arch Linux setup, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Overview

This repository contains my personal dotfiles for:
- **Terminal**: Ghostty
- **Editor**: Neovim
- **Shell**: Zsh (with Starship prompt)

## Prerequisites

- **OS**: Arch Linux
- **Git**: `sudo pacman -S git`

## Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/umairkhan-sh/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    ```

2.  **Install base packages:**
    Run the installation script to install required packages from official repositories and AUR.
    ```bash
    cd .system-config/installation
    ./install.sh
    ```

3.  **Link configurations:**
    Use `stow` to symlink configuration files to your home directory.
    ```bash
    cd ~/dotfiles
    stow .
    ```

4.  **Post-installation setup:**
    Enable system services and configure user shell.
    ```bash
    cd .system-config/installation
    ./post-install.sh
    ```

## Included Configurations

- **.config/**: Configuration directories for `ghostty`, `nvim`, `starship`, and `zsh`.
- **.system-config/**: System-level scripts and installation lists.
- **.zshenv**: Zsh environment variables.

## Tools List

The setup includes the following key tools (see `.system-config/installation/applications-list` for full list):
- **Core**: `zsh`, `starship`, `stow`, `git`, `curl`, `wget`
- **Development**: `neovim`, `docker`, `go`, `rust`, `python`, `nodejs`
- **Utilities**: `fzf`, `ripgrep`, `bat`, `eza`, `btop`, `jq`

---