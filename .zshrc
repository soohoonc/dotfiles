[ -f "/Users/schoi/.ghcup/env" ] && source "/Users/schoi/.ghcup/env" # ghcup-envexport PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

# opam configuration
[[ ! -r /Users/schoi/.opam/opam-init/init.zsh ]] || source /Users/schoi/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# pnpm
export PNPM_HOME="/Users/schoi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/opt/homebrew/Cellar/bun/1.0.0/share/zsh/site-functions/_bun" ] && source "/opt/homebrew/Cellar/bun/1.0.0/share/zsh/site-functions/_bun"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# bun completions
[ -s "/Users/schoi/.bun/_bun" ] && source "/Users/schoi/.bun/_bun"

# Aliases
alias kc='kubectl'

# NVM
export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# uv 
export VIRTUAL_ENV_DISABLE_PROMPT=1
source "$HOME/.python-base/bin/activate"

export PATH="$HOME/.local/bin:$PATH"
