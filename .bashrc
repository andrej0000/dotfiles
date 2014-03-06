#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -h'
#alias del='mv \!* ~/.TRASH'
PS1='[\u@\h \W]\$ '
#PS1='\u@\h \W \$ '
pacman='pacman --color=always'
export CATALINA_HOME=/home/data/praca/misc/apache-tomcat-7.0.41
