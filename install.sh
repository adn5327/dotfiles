# move old config files to .old
mv ~/.vimrc ~/.vimrc.old
mv ~/.gitconfig ~/.gitconfig.old
mv ~/.tmux.conf ~/.tmux.conf.old
mv ~/.zshrc ~/.zshrc.old

# get oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# get pathogen for vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# get some plugins for vim
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/guns/vim-clojure-static.git ~/.vim/bundle/vim-clojure-static
git clone https://github.com/nvie/vim-flake8.git ~/.vim/bundle/vim-flake8

# setup solarized colorscheme
git clone https://github.com/altercation/vim-colors-solarized.git ~/vim-colors-solarized
mkdir -p ~/.vim/colors
mv ~/vim-colors-solarized/colors/solarized.vim ~/.vim/colors
rm -rf ~/vim-colors-solarized
 
# TODO make sure tmux is installed -- brew/yum/etc
# get tpm for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# TODO make it such that it doesn't rely on dotfiles being in the home dir
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
