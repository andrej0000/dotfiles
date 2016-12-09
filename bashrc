## ~/.bashrc: executed by bash(1) for non-login shells.
## see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
## for examples
#
## If not running interactively, don't do anything
#case $- in
#    *i*) ;;
#      *) return;;
#esac
#
## don't put duplicate lines or lines starting with space in the history.
## See bash(1) for more options
#HISTCONTROL=ignoreboth
#
## append to the history file, don't overwrite it
#shopt -s histappend
#
## for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
#HISTSIZE=1000
#HISTFILESIZE=2000
#
## check the window size after each command and, if necessary,
## update the values of LINES and COLUMNS.
#shopt -s checkwinsize
#
## If set, the pattern "**" used in a pathname expansion context will
## match all files and zero or more directories and subdirectories.
##shopt -s globstar
#
## make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#
## set variable identifying the chroot you work in (used in the prompt below)
#if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
#    debian_chroot=$(cat /etc/debian_chroot)
#fi
#
## set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#    xterm-color) color_prompt=yes;;
#esac
#
## uncomment for a colored prompt, if the terminal has the capability; turned
## off by default to not distract the user: the focus in a terminal window
## should be on the output of commands, not on the prompt
##force_color_prompt=yes
#
#if [ -n "$force_color_prompt" ]; then
#    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#	# We have color support; assume it's compliant with Ecma-48
#	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#	# a case would tend to support setf rather than setaf.)
#	color_prompt=yes
#    else
#	color_prompt=
#    fi
#fi
#
#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
#unset color_prompt force_color_prompt
#
## If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac
#
#PS1='$CUDAVER'$PS1
#
#VERSION=debug
#
##PRODUCTION_70=1
##PRODUCTION_65=1
#X86=1
##ARM=1
#
#TOT=1
##REL_65=1
##REL_70=1
##REL_75=1
#
#function st() {
#echo "LD_LIBRARY_PATH"
#echo $LD_LIBRARY_PATH
#echo "which nvcc"
#which nvcc
#}
#
#alias p65='source $HOME/bin/p65.sh'
#alias p70='source $HOME/bin/p70.sh'
#alias p75='source $HOME/bin/p75.sh'
#alias t86='source $HOME/bin/t86.sh'
#alias tarm='source $HOME/bin/tARM.sh'
#alias trarm='source $HOME/bin/trARM.sh'
#alias rarm65='source $HOME/bin/rarm65.sh'
#alias r8665='source $HOME/bin/r8665.sh'
#alias rarm70='source $HOME/bin/rarm70.sh'
#alias r8670='source $HOME/bin/r8670.sh'
#alias rarm75='source $HOME/bin/rarm75.sh'
#alias r8675='source $HOME/bin/r8675.sh'
#
#PF=/home/asulecki/p4workspace
#
#export PATH=$HOME/bin:$PATH
#
#export PATH=$HOME/bin/p4v-2014.3.1007540/bin:$PATH
#
#export NV_TOOLS=${PF}/sw/tools
#export CUDABINPATH=${PF}/sw/gpgpu/bin/x86_64_Linux_$VERSION
#
#if [[ $TOT -eq 1 ]]; then
#   export VULCAN_PRODUCT=//sw/gpgpu/eris/cuda.vlcp
#   export PATH=$HOME/.vulcan/install/cuda/_internal/compiler/bin/:$PATH
#
#   if [[ $X86 -eq 1 ]]; then
#      ARCHITECTURE_PATH=x86_64_Linux
#      echo "CUDA TOT x86 VERSION"
#      CUDAVER=T_X86
#   fi
#   if [[ $ARM -eq 1 ]]; then
#      ARCHITECTURE_PATH=ARMv7_Linux_gnueabihf
#      echo "CUDA TOT ARM VERSION"
#      CUDAVER=T_ARM
#   fi
#   export LD_LIBRARY_PATH=$PF/sw/gpgpu/bin/${ARCHITECTURE_PATH}_${VERSION}:$LD_LIBRARY_PATH
#   export PATH=$PF/sw/gpgpu/bin/${ARCHITECTURE_PATH}_${VERSION}/:$PATH
#   export LD_LIBRARY_PATH=$PF/sw/gpgpu/bin/${ARCHITECTURE_PATH}_${VERSION}/libnvvp:$LD_LIBRARY_PATH
#   export PATH=$PF/sw/gpgpu/bin/${ARCHITECTURE_PATH}_${VERSION}/libnvvp:$PATH
#   ALIASPREFIX='$PF/sw/gpgpu/'
#fi
#
#
#alias g='cd '$ALIASPREFIX
#alias b='cd '$ALIASPREFIX'bin/'$ARCHITECTURE_PATH'_$VERSION'
#alias cudart='cd '$ALIASPREFIX'/cuda/tools/cudart/'
#alias apps='cd '$ALIASPREFIX'/cuda/apps/'
#alias math='cd '$ALIASPREFIX'/math/'
#alias cufft='cd '$ALIASPREFIX'/cufft/'
#
#alias getCompiler='vulcan --eris --install ]=compiler_internal --target-revision=pkg-latest'
#
#
## enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    alias ls='ls --color=auto'
#    #alias dir='dir --color=auto'
#    #alias vdir='vdir --color=auto'
#
#    alias grep='grep --color=auto'
#    alias fgrep='fgrep --color=auto'
#    alias egrep='egrep --color=auto'
#fi
#
## some more ls aliases
#alias ll='ls -alF'
#alias la='ls -A'
#alias l='ls -CF'
#
## Add an "alert" alias for long running commands.  Use like so:
##   sleep 10; alert
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#
## Alias definitions.
## You may want to put all your additions into a separate file like
## ~/.bash_aliases, instead of adding them here directly.
## See /usr/share/doc/bash-doc/examples in the bash-doc package.
#
#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi
#
## enable programmable completion features (you don't need to enable
## this, if it's already enabled in /etc/bash.bashrc and /etc/profile
## sources /etc/bash.bashrc).
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi
#
#
#PERFORCE
export P4PORT=p4sw:2006
export P4EDITOR=vim
export P4DIFF=colordiff
export P4USER=asulecki
export P4CLIENT=asulecki-ssd
#
##ERIS
#PATH=$PATH:~/p4workspace/sw/eris/bin
##export VULCAN_PRODUCT=//sw/gpgpu/eris/compiler.vlcp
#export VULCAN_PRODUCT=//sw/rel/gpgpu/toolkit/r7.0/eris/cuda70.vlcp
#
## XCOMPILE ERISTA
## PATH=~/p4workspace/sw/gpgpu/bin/ARMv7_Linux_gnueabihf_debug/:$PATH
## LD_LIBRARY_PATH=~/p4workspace/sw/gpgpu/bin/ARMv7_Linux_gnueabihf_debug/:$LD_LIBRARY_PATH
##PATH=~/p4workspace/sw/rel/gpgpu/toolkit/r7.0/bin/ARMv7_Linux_gnueabihf_debug/:$PATH
##LD_LIBRARY_PATH=~/p4workspace/sw/rel/gpgpu/toolkit/r7.0/bin/ARMv7_Linux_gnueabihf_debug/:$LD_LIBRARY_PATH
#
#PATH=~/iaca-lin64/bin/:$PATH
#PATH=~/p4workspace/sw/gpgpu/bin/x86_64_Linux_release/:$PATH
#PATH=~/p4workspace/sw/tools/intel/linux/composer_xe_2015.3.187/bin/intel64/:$PATH
##MAKE FLAGS
#
#export ERISTA_MAKE=TARGET_ARCH=ARMv7\ ABITYPE=gnueabihf\ NVCFG_GLOBAL_GPU_IMPL_GM20B=1

alias cudatags='ctags --langmap=C++:+.cu *'

eval `dircolors /home/asulecki/setup/gnome-terminal-colors-solarized/dircolors`

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /home/asulecki/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

alias ssdp4='source ~/ssdperforce.sh'
alias oldp4='source ~/oldperforce.sh'

export PATH=$PATH:/home/asulecki/p4workspace/sw/eris/bin
export PATH=$PATH:/home/asulecki/p4workspace/sw/misc/linux
export VULCAN_CONFIG=.vulcan_config
export CUDA_BIN=/usr/local/cuda/bin
export CUDA_LIB=/usr/local/cuda/lib64
#export CUDA_BIN=/home/asulecki/p4workspace/sw/gpgpu/install/cuda/bin
#export CUDA_LIB=/home/asulecki/p4workspace/sw/gpgpu/install/cuda/lib64
export PATH=$PATH:$CUDA_BIN
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_LIB
