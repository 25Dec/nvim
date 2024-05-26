# Default Path for .zshrc

/home/{username}/.zshrc (For normal user)
/root/.zshrc (For super ush)

# Installing ZSH and OH-MY-ZSH

1. sudo apt/dnf install zsh
2. chsh -s $(which zsh)
3. sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Plugins for ZSH:

- git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
- git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Video Guide

https://www.youtube.com/watch?v=z7wzRKkYdFg&t=1s
