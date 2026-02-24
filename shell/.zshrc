[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

# opam configuration
[[ ! -r "$HOME/.opam/opam-init/init.zsh" ]] || source "$HOME/.opam/opam-init/init.zsh" > /dev/null 2> /dev/null

autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# bun completions
[ -s "/opt/homebrew/Cellar/bun/1.0.0/share/zsh/site-functions/_bun" ] && source "/opt/homebrew/Cellar/bun/1.0.0/share/zsh/site-functions/_bun"

export PATH="$HOME/.jenv/bin:$PATH"
if command -v jenv >/dev/null 2>&1; then
  eval "$(jenv init -)"
fi

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export PATH="$HOME/.bun/bin:$PATH"

# Aliases
alias kc='kubectl'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -d "$NVM_DIR" ] || mkdir -p "$NVM_DIR" 2>/dev/null
HOMEBREW_PREFIX="${HOMEBREW_PREFIX:-/opt/homebrew}"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# uv 
export VIRTUAL_ENV_DISABLE_PROMPT=1
[ -f "$HOME/.python-base/bin/activate" ] && source "$HOME/.python-base/bin/activate"

export PATH="$HOME/.local/bin:$PATH"

# cargo 
if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi
