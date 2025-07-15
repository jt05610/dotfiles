SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo "creating symlink from ${SCRIPTPATH}/neovim/.config/nvim to ${HOME}/.config/nvim"
ln -s "${SCRIPTPATH}/neovim/.config/nvim" "${HOME}/.config/nvim"
