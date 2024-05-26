# Default Path

- Windows: C:\Users\\{user-name}\AppData\Local\nvim
- Fedora:
    - /home/{user-name}/.config/nvim
    - /root/.config/nvim

# Packages Manager

- Windows: chocolately
- Fedora: dnf

# Must Have Packages

- fd (fd-find for Linux)
- fzf
- make
- git
- ripgrep
- mingw (Windows only)

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
