SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo "creating symlink from ${SCRIPTPATH}/neovim/.config/nvim to ${HOME}/.config/nvim"
ln -s "${SCRIPTPATH}/neovim/.config/nvim" "${HOME}/.config/nvim"

curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip -O -J -L
unzip JetBrainsMono
mv *.ttf ~/Library/Fonts/
rm JetBrainsMono.zip OFL.txt README.md
