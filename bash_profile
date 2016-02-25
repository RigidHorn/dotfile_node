# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [[ -s ~/.nvm/nvm.sh ]];
then source ~/.nvm/nvm.sh
fi

auto_cdls()
{
  if [ "$OLDPWD" != "$PWD" ]; then
    ls
    OLDPWD="$PWD"
  fi
}
PROMPT_COMMAND="$PROMPT_COMMAND"$'\n'auto_cdls

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
