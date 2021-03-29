# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %F{green}%b%f'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/ruby/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# TSL Django
export EMAIL_HOST_PASSWORD='N/A'
export SENTRY_DSN='N/A'
export SENTRY_ENVIRONMENT='development'
export BRANCHIO_KEY='N/A'
export AWS_ACCESS_KEY_ID='N/A'
export CELERY_BROKER_URL='amqp://api:1234@172.17.2.12/api'
export AWS_STORAGE_BUCKET_NAME='tsl-development'
export DJANGO_SETTINGS_MODULE='settings.local'
export DEFAULT_FROM_EMAIL='Lars Klassen <lk2@tsl.io>'
export AWS_SECRET_ACCESS_KEY='N/A'
export EMAIL_USE_TLS='False'
export EMAIL_PORT='N/A'
export SECRET_KEY='1234'
export FRONT_URL='TODO'
export EMAIL_HOST_USER='N/A'
export EMAIL_HOST='N/A'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Android Tools
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

# Yubico PIV Tool
alias yubiadd="ssh-add -s /usr/local/lib/libykcs11.dylib"
alias yubirm="ssh-add -e /usr/local/lib/libykcs11.dylib"

# MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/Users/larcho/.dotnet/tools:$PATH"
