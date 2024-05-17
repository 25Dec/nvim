# Default Path

- Windows: C:\Users\{your-computer-name}\AppData\Local\nvim
- Fedora: /root/.config/nvim

# Packages Manager

- Windows: chocolately
- Fedora: dnf

# Must Have Packages

- fd
- fzf
- make
- git
- ripgrep
- mingw (Windows only)
- tmux (Linux only)

# Fonts

Use Hack Nerd Font

- Windows: choco install nerd-fonts-hack
- Fedora:
  1. Download (any) Nerdfont
  2. Extract
  3. Put the extracted folder into /usr/share/fonts
  4. Rebuild font cache by running fc-cache -f -v

# Things To Do After Installing Fedora

- sudo dnf update (Update all packages)
- sudo dnf autoremove (Uninstall any dependency that is not required by any installed packages)
- Install Tweakes, gnome-extensions in Gnome Software Center

## Installing ZSH

1. sudo dnf install zsh
2. sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
3. Go to Terminal Preferences -> Profiles -> Command -> Enable "Run a custom command..." -> Fill in "/usr/bin/zsh"
4. Video guide: https://www.youtube.com/watch?v=z7wzRKkYdFg&t=1s
