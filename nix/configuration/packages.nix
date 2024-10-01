{ pkgs, ...}:
{
    environment.systemPackages = with pkgs; [
        anki
        bat
        bottles
        brave
        btop
        deluge
        fastfetch
        fd
        ferdium
        file
        fzf
        gcc
        gdu
        git
        gnome-calendar
        gnupg
        heroic
        hledger
        hledger-ui
        hledger-web
        kdePackages.yakuake
        libnotify
        lsd
        lutris
        meslo-lgs-nf
        mpv
        newsboat
        nodejs-slim
        obsidian
        pass
        pinentry-qt
        polonium
        prismlauncher
        python3
        renameutils
        ripgrep
        stow
        stretchly
        thunderbird
        tmux
        tree-sitter
        unrar-free
        unzip
        vesktop
        wl-clipboard
        yazi
        zathura
        zotero_7
        zsh-powerlevel10k
    ];
}
