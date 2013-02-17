# -*- mode: shell-script; -*-
export ADOTDIR=~/.config/zsh/antigen-repo

source ~/.config/zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen-lib

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen-bundle git
antigen-bundle svn

# Syntax highlighting bundle.
antigen-bundle zsh-users/zsh-syntax-highlighting

# Highlight history search bundle.
antigen-bundle zsh-users/zsh-history-substring-search

# Zsh completion.
antigen-bundle xgarrido/zsh-completions

# Homemade utilities
antigen-bundle xgarrido/zsh-utilities

# SN@ilware utilities
antigen-bundle xgarrido/zsh-snailware

# SN@ilware aggregators
antigen-bundle xgarrido/zsh-aggregator

# Fabric utilities
antigen-bundle xgarrido/zsh-fabric

# Load the theme.
antigen-bundle xgarrido/zsh-themes
antigen-theme xgarrido/zsh-themes nemo

# Tell antigen that you're done.
antigen-apply
