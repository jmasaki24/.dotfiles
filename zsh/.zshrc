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

# Syntax highlighting must load last
if [[ -r /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ -r /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
