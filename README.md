# custom-config

Linkai's configuration of different tools on Linux.

# TODO

## prerequisite and useful software

- git
- cmake
- make
- gcc/g++
- zsh
- tmux
- python

## how to use

1. clone this repository to your home directory
2. run `install.sh` to install all the configuration files

## Files structure

- install.conf.yaml: configuration file for how to install all the dotfiles
- ./config: all the specific configuration dotfiles are in this directory
  - zshrc: configuration manage plugs for zsh by antigen
  - tmux.conf: configuration file for tmux
  - p10k.zsh: configuration file for powerlevel10k, a theme for zsh
  - nvim: directory for neovim configuration
  - gdbinit: configuration for gdb
  - private: directory for private configuration
- ./deps: some necessary dependencies
