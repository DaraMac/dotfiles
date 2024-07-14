{ pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
  anki
  bat
  bottles
  brave
  deluge
  ferdium
  file
  gcc
  git
  gnupg
  kdePackages.yakuake
  libsForQt5.polonium
  lutris
  meslo-lgs-nf
  mpv
  obsidian
  pass
  pinentry-qt
  python3
  renameutils
  ripgrep
  stow
  thunderbird
  tmux
  tree-sitter
  unrar-free
  unzip
  wineWowPackages.waylandFull
  wl-clipboard
  zathura
  zotero_7
  zsh-powerlevel10k
  ];
}
