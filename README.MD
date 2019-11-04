# How to install dot files
1. Install zsh, git and curl via package manager.
2. Install oh-my-zsh:</br>
`$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
3. Clone repo:</br>
`$ git clone --bare https://github.com/JeffAment/DotFiles.git $HOME/.dotFiles`
4. Set temporary alias for scope of current terminal session:</br>
`$ alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotFiles/ --work-tree=$HOME'`
5. Rename or delete existing dot files in home directory that may conflict with the new ones.
6. Checkout dot files:</br>
`$ dotfiles checkout`
7. Set repo to not show untracked files:</br>
`$ dotfiles config status.showUntrackedFiles no`
8. Initialize and update submodules:</br>
`$ dotfiles submodule init`</br>
`$ dotfiles submodule update`
9. Pull in two git plugins for bash:</br>
`$ curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/git-prompt.sh`</br>
`$ curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/git-completion.bash`</br>
10. Install and enable nerdfont.</br>
11. Periodically update submodules:</br>
`$ dotfiles submodule update --remote --merge`

# Notes on how this repo was made for reference
`$ git init --bare $HOME/.dotFiles`</br>
`$ alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotFiles/ --work-tree=$HOME'`</br>
`$ dotfiles config --local status.showUntrackedFiles no`</br>
`$ echo ".dotFiles" >> .gitignore`</br>
`$ dotfiles submodule add https://github.com/zsh-users/zsh-autosuggestions .dotFilesSubmodules/zsh/plugins/zsh-autosuggestions`</br>
`$ dotfiles submodule add https://github.com/zsh-users/zsh-syntax-highlighting.git .dotFilesSubmodules/zsh/plugins/zsh-syntax-highlighting`</br>
`$ dotfiles submodule add https://github.com/bhilburn/powerlevel9k.git .dotFilesSubmodules/zsh/themes/powerlevel9k`</br>
