# Installing homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew list
# brew install ansible
brew install ffmpeg graphicsmagick htop imagemagick neovim phantomjs postgresql pyenv rbenv redis ruby-build sqlite the_silver_searcher tree unrar wget youtube-dl ctags
brew install heroku/brew/heroku
brew services start postgresql
brew cask list
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

# Installing zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# copy from .zshrc
source ~/.zshrc

# Installing python and ruby (using pyenv and rbenv)
# Maybe should manually choose
pyenv install 3.6.5
rbenv install 2.5.1


# Installing utilities
mkdir ~/Tools
mkdir ~/Workspaces
cd ~/Tools
git clone git@github.com:rustyworks/vim-config.git
cd vim-config
./link.sh
cd ..
git clone git@github.com:rustyworks/fonts.git
