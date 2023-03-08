# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh/custom

# Path
export PATH="./node_modules/.bin:$PATH:$HOME/bin:$"

# Lang configuration
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="consoleColors"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git npm node nvm docker vscode alias)

# auto switch node version when .nvmrc file detected
zstyle ':omz:plugins:nvm' autoload yes

# Prepare
source $ZSH/oh-my-zsh.sh