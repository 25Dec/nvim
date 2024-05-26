# Default Path for NVIM

- Windows: C:\Users\\{username}\AppData\Local\nvim
- Linux:
  - /home/{username}/.config/nvim (For normal user)
  - /root/.config/nvim (for super user)

# Must Have Packages

- fd (fd-find for Linux)
- fzf
- make
- git
- ripgrep
- tmux (Linux only)
- mingw (Windows only)

# Fonts

Use Hack Nerd Font

- Windows: choco install nerd-fonts-hack
- Fedora:
  1. Download (any) Nerdfont
  2. Extract
  3. Put the extracted folder into /usr/share/fonts
  4. Rebuild font cache by running fc-cache -f -v
