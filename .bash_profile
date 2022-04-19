# ChevySSinSD .bash_profile for t430-debian-i3-gaps

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

## git bash completion for aliases
if [ -f ~/scripts/bash/git-completion.bash ]; then
  . ~/scripts/bash/git-completion.bash

  # Add git completion to the aliases: you must manually match each of your aliases to the respective function for the git command defined in git-completion.bash.
  __git_complete g __git_main
  __git_complete gc _git_checkout
  __git_complete gnb _git_checkout
  __git_complete gnewbranch _git_checkout
  __git_complete gm _git_merge
  __git_complete grmbranch _git_branch
  __git_complete gr _git_rebase
  __git_complete gl _git_log
  __git_complete ga _git_add
  __git_complete gd _git_diff
  __git_complete gcom _git_commit
  __git_complete gcomma _git_commit
  __git_complete gcmr _git_ls_remote
fi

#Start X
startx
