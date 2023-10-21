# Assume ~/.dotfiles

DOTFILES_DIR="$HOME/.dotfiles"

# Make utilities available

PATH="$DOTFILES_DIR/bin:$PATH"

# Source the dotfiles

for DOTFILE in "$DOTFILES_DIR"/system/.{function,function_*,n,path,env,exports,alias,grep,prompt,completion,fix,zoxide}; do
  . "$DOTFILE"
done

# Wrap up

unset DOTFILE
export DOTFILES_DIR
