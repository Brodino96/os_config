#!/bin/sh

paru -S flatpak --noconfirm
flatpak install flathub com.obsproject.Studio -y

paru -S libdbusmenu-glib --noconfirm # vscode dep
paru -S icu69-bin --noconfirm # vscode dep
paru -S visual-studio-code-bin --noconfirm

paru -S rustup --noconfirm
paru -S nodejs --noconfirm
paru -S spotify-launcher --noconfirm
paru -S vlc --noconfirm
paru -S steam --noconfirm
paru -S discord --noconfirm
paru -S paru openhardwaremonitor --noconfirm
paru -S fzf --noconfirm
paru -S zoxide --noconfirm
paru -S telegram-desktop --noconfirm
paru -S git --noconfirm
paru -S geekbench --noconfirm
paru -S kdiskmark --noconfirm