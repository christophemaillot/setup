

autoload -U add-zsh-hook

# python 3 as the default python executable
export PATH=/usr/local/opt/python/libexec/bin:$PATH

######################################################################
#  juse : a handy function to switch current JDK version             #
######################################################################

function juse {
  echo $fg[green] "▶ switching to java version $1" $fg[default]
  /usr/libexec/java_home -v $1 2> /dev/null > /dev/null
  if [ "$?" = "0" ]
  then
      echo "    Java $1 found at $(/usr/libexec/java_home -v $1)"
      export JAVA_HOME=`/usr/libexec/java_home -v $1`
  else
      echo "    " $fg[red] "⚠"  $fg[default] "Java $1 not found"
  fi
  echo $fg[green] "▶ displaying new java version" $fg[default]
  java -version 2>&1  | sed -e "s/^/    /g"
}

######################################################################
#   android SDK                                                      #
######################################################################

export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

#export ANDROID_HOME="/opt/android-sdk/"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools/"


######################################################################
#   setup nvm                                                        #
######################################################################

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

######################################################################
#   environment tweaking                                             #
######################################################################

export HOMEBREW_EDITOR="code"
export LANG="en_US.UTF-8"
export PATH=$PATH:$HOME/Local/bin
ssh-add -K  2>/dev/null > /dev/null

######################################################################
#   mysql client                                                     #
######################################################################

export PATH="/usr/local/opt/mysql-client/bin:$PATH"


######################################################################
#   install z                                                        #
######################################################################

. /usr/local/etc/profile.d/z.sh

######################################################################
#   starship                                                         #
######################################################################

eval "$(starship init zsh)"

######################################################################
#   exa                                                              #
######################################################################

alias ls=exa
alias cat=bat

######################################################################
#   ant                                                              #
######################################################################

export ANT_VERSION=1.10.8
export ANT_HOME=/opt/apache-ant-${ANT_VERSION}/
export PATH=$PATH:$ANT_HOME/bin

######################################################################
#   composer                                                         #
######################################################################

export PATH=$PATH:$HOME/.composer/vendor/bin


######################################################################
#   work settings                                                    #
######################################################################

export SALAMANDRE_CACHE=~/Cache/SALAMANDRE_CACHE
export SALAMANDRE_LOCAL_LIBS=~/Cache/SALAMANDRE_LOCAL_LIBS

export PATH=$PATH:/Users/eddy/Projects/kilab/prodtools/globule-cli

######################################################################
#   phpbrew                                                          #
######################################################################

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
if [ -e /usr/local/opt/php/ ] ;
then
  PATH=/usr/local/opt/php/bin:$PATH
fi

######################################################################
#   misc conf                                                        #
######################################################################

alias t="open -a iTerm ."

######################################################################
#   deno                                                             #
######################################################################

export PATH=$PATH:/Users/eddy/.deno/bin


