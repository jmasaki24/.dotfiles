# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ==========================================
# Manjaro Zsh configuration
# trying to be compatible with other distros
# ==========================================

# Locate this configuration directory
export ZSH_DOTFILES="${${(%):-%N}:A:h}"

# Manjaro prompt settings
USE_POWERLINE="true"
HAS_WIDECHARS="false"

# Load main Manjaro configuration
source "$ZSH_DOTFILES/manjaro/manjaro-zsh-config"

# Load Manjaro prompt
source "$ZSH_DOTFILES/manjaro/manjaro-zsh-prompt"

# Toggle Git information in the Powerlevel10k prompt
_GITPROMPT_ENABLED=1

gitprompt() {
    if [[ $_GITPROMPT_ENABLED == 1 ]]; then
        p10k display vcs=hide
        _GITPROMPT_ENABLED=0
        echo "Git prompt: OFF"
    else
        p10k display vcs=show
        _GITPROMPT_ENABLED=1
        echo "Git prompt: ON"
    fi
}

# Syntax highlighting must load last
if [[ -r /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ -r /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# alias
source "$HOME/.dotfiles/shell/aliases"
