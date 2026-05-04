export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# GIT branch on shell
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats 'on branch %F{green}%b%f'

setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

# NVIM Alias
alias vim="nvim"

# pnpm
export PNPM_HOME="/Users/larcho/Library/pnpm./tools"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# OpenAI
export OPENAI_API_KEY="xxx"

# Created by `pipx` on 2025-02-20 13:42:19
export PATH="$PATH:/Users/larcho/.local/bin"

export EDITOR=nvim
