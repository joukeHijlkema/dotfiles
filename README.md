## Description
These are my personal dotfiles, which I manage with the help of git
and a nice tool called [dotfiles].  This is the base dotfiles
repository  which contains what I want to have available in a basic
shell environment.

## What is included

### Shell environment
 * [zshrc] - zsh use [antigen] zsh bundle which is reponsible for
   downloading and loading different zsh plugins
 * [bashrc] - bash (not used anymore)
 * [toprc] - fancy colors for ```top``` command

### X11 settings
 * [Xdefaults] - it mainly contains some Xft antialias stuff and
 define [emacs] default font
 * [Xmodmap] - switch Caps_Lock with ESCAPE key

### Individual tool configurations
 * [ackrc] - [ack] is a programmers grep for searching source code
   without too much hassle.
 * [gitconfig] - [git] mail and name configuration

### Application configuration

**currently not supported**

[zshrc]:   https://github.com/xgarrido/dotfiles/blob/master/zshrc  "zshrc"
[antigen]: https://github.com/zsh-users/antigen                    "antigen"
[bashrc]:  https://github.com/xgarrido/dotfiles/blob/master/bashrc "bashrc"
[toprc]:   https://github.com/xgarrido/dotfiles/blob/master/toprc  "toprc"

[Xdefaults]: https://github.com/xgarrido/dotfiles/blob/master/Xdefaults "Xdefaults"
[Xmodmap]:   https://github.com/xgarrido/dotfiles/blob/master/Xmodmap   "Xmodmap"

[ackrc]:     https://github.com/xgarrido/dotfiles/blob/master/.ackrc    "ackrc"
[ack]:       http://betterthangrep.com/                                 "Ack"
[gitconfig]: https://github.com/xgarrido/dotfiles/blob/master/gitconfig "gitconfig"
[git]:       http://git-scm.com/                                        "git"

## Installation

Install the [dotfiles] package, either using `pip` (recommended) or
`easy_install`. Maybe with some help of `sudo`.

    pip install dotfiles

Create some directory where to store multiple dotfiles repositories.

    mkdir -p ~/repos/dotfiles

Clone this repository into that directory.

    git clone https://github.com/xgarrido/dotfiles ~/repos/dotfiles/base

And symlink it's contents into your home directory.

    dotfiles -s -R ~/repos/dotfiles/base

Also check out `dotfiles -h` or the [dotfiles]
manual for more information on the hows and whats of that tool.

[dotfiles]: https://github.com/jbernard/dotfiles "dotfiles"
