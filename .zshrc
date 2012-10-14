# -*- mode: shell-script; -*-
export ADOTDIR=~/.config/zsh/antigen-repo

source ~/.config/zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen-lib

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen-bundle git
antigen-bundle svn
antigen-bundle wakeonlan

# Syntax highlighting bundle.
antigen-bundle zsh-users/zsh-syntax-highlighting

# Highlight history search bundle.
antigen-bundle zsh-users/zsh-history-substring-search

# Homemade utilities
antigen-bundle xgarrido/zsh-functions

# Snailware utilities
antigen-bundle xgarrido/zsh-snailware

# Load the theme.
antigen-theme xgarrido/zsh-functions nemo

# Tell antigen that you're done.
antigen-apply
