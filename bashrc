# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#˘ If not running interactively, don't do anything
if [[ -n "$PS1" ]] ; then

  # don't put duplicate lines in the history. See bash(1) for more options
  # don't overwrite GNU Midnight Commander's setting of `ignorespace'.
  export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
  # ... or force ignoredups and ignorespace
  export HISTCONTROL=ignoreboth

  # append to the history file, don't overwrite it
  shopt -s histappend

  # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

  # check the window size after each command and, if necessary,
  # update the values of LINES and COLUMNS.
  shopt -s checkwinsize

  # make less more friendly for non-text input files, see lesspipe(1)
  [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

  # set variable identifying the chroot you work in (used in the prompt below)
  if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
      debian_chroot=$(cat /etc/debian_chroot)
  fi

  # set a fancy prompt (non-color, unless we know we "want" color)
  case "$TERM" in
      xterm-color) color_prompt=yes;;
  esac

  # uncomment for a colored prompt, if the terminal has the capability; turned
  # off by default to not distract the user: the focus in a terminal window
  # should be on the output of commands, not on the prompt
  #force_color_prompt=yes

  if [ -n "$force_color_prompt" ]; then
      if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  	# We have color support; assume it's compliant with Ecma-48
  	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  	# a case would tend to support setf rather than setaf.)
  	color_prompt=yes
      else
  	color_prompt=
      fi
  fi

  if [ "$color_prompt" = yes ]; then
      PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
  else
      PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
  fi
  unset color_prompt force_color_prompt

  # If this is an xterm set the title to user@host:dir
  case "$TERM" in
  xterm*|rxvt*)
      PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
      ;;
  *)
      ;;
  esac

  # Alias definitions.
  # You may want to put all your additions into a separate file like
  # ~/.bash_aliases, instead of adding them here directly.
  # See /usr/share/doc/bash-doc/examples in the bash-doc package.

  #if [ -f ~/.bash_aliases ]; then
  #    . ~/.bash_aliases
  #fi

  # enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
      eval "`dircolors -b`"
      alias ls='ls --color=auto'
      #alias dir='dir --color=auto'
      #alias vdir='vdir --color=auto'

      #alias grep='grep --color=auto'
      #alias fgrep='fgrep --color=auto'
      #alias egrep='egrep --color=auto'
  fi

  # enable programmable completion features (you don't need to enable
  # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
  # sources /etc/bash.bashrc).
  if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
  fi

  #emacs aliases when using emacs --daemon.
  #-c -n = new window, terminal doesn't wait
  #-t = force terminal mode
  #-alternate-editor='' = start daemon if it isn't already running
  alias e="emacsclient -nw --alternate-editor=''"
  alias ed="emacs-23.3 --daemon"
  alias killemacs="emacsclient -e '(kill-emacs)'"
  alias killemacssoft="emacsclient --eval '(progn (save-some-buffers t t) (kill-emacs))'"

  EDITOR="e"
  VISUAL="e"


  ## Export paths
  export PATH=/home/peter/bin:$PATH
  export PATH=/Users/pchristensen/bin:$PATH
  export PATH=/usr/local/mysql/bin:$PATH
  export PATH=/usr/local/bin:$PATH
  export PATH=.:$PATH

  alias ll="ls -lF"
  alias la="ls -lAF"
  alias lo="ls -ltcF"

  ## OSX
  alias ack='ack --pager="less -FRSX"'    # F = one screen, R = raw control chars (for formatting), S = chop long lines, X = no init (leaves input when dies)
  ## Ubuntu
  #alias ack='ack-grep --pager="less -FRSX"'    # F = one screen, R = raw control chars (for formatting), S = chop long lines, X = no init (leaves input when dies)
  alias rack='ack --ruby --follow'
  alias aack='ack --all'

  alias psgrep='ps aux | grep'

  function g {
    if [ $# == '0' ]; then
      git status
    else
      git "$@";
    fi
  }

  # Autocomplete for 'g' as well
  complete -o default -o nospace -F _git g

  . ~/.bash/z.sh

  function prompt {
      local LIGHT_RED="\[\033[1;31m\]"
      local LIGHT_GREEN="\[\033[1;32m\]"
      local NO_COLOUR="\[\033[0m\]"

      local TITLEBAR='\[\033]0;\u@\h\007\]'

      source ~/.bash/git-completion.bash

      export GIT_PS1_SHOWDIRTYSTATE=true
      export GIT_PS1_SHOWUNTRACKEDFILES=true
      export GIT_PS1_SHOWUPSTREAM=auto
      export GIT_PS1_SHOWSTASHSTATE=true

      PS1="$TITLEBAR\n\w/$LIGHT_GREEN\$(__git_ps1 ' (%s)') $LIGHT_RED\$(~/.rvm/bin/rvm-prompt i v g)\n$NO_COLOUR$ "

  }
  #call the prompt function to set things in motion
  prompt

  SSHAGENT=/usr/bin/ssh-agent
  SSHAGENTARGS="-s"
  if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
    eval `$SSHAGENT $SSHAGENTARGS`
    trap "kill $SSH_AGENT_PID" 0
    ssh-add ~/.ssh/id_rsa_vmdev_github_geekstack
    ssh-add ~/.ssh/id_rsa_vmdev_github_pchristensen
  fi

fi # <- close the non-interactive guard

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


# Local Variables:
# mode: shell-script
# End:


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
