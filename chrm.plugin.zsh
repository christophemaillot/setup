

chrm_prompt_datime() {
    prompt_segment '67' '0' "$(date +"%H:%M:%S")"
}


chrm_rprompt_nvm() {
  echo "${NVM_BIN[(ws:/:)-2]}"
}

autoload -U add-zsh-hook

ssh-add -K  > /dev/null





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
#export PATH="$PATH:/opt/android-sdk/platform-tools/"


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
ssh-add -K  > /dev/null

######################################################################
#   power level 9k                                                   #
######################################################################

source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
