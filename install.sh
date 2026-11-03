#!/bin/sh
# Liga as configs deste repositório ao home via symlinks.
# Arquivos existentes (que não sejam symlinks) vão para ~/.dotfiles-backup/<data>/.
set -e

REPO="$(cd "$(dirname "$0")" && pwd)"
BACKUP="$HOME/.dotfiles-backup/$(date +%Y%m%d-%H%M%S)"

link() {
    src="$REPO/$1"
    dst="$2"
    if [ -L "$dst" ]; then
        rm "$dst"
    elif [ -e "$dst" ]; then
        mkdir -p "$BACKUP"
        mv "$dst" "$BACKUP/"
        echo "backup: $dst -> $BACKUP/"
    fi
    mkdir -p "$(dirname "$dst")"
    ln -s "$src" "$dst"
    echo "link:   $dst -> $src"
}

# Diretórios inteiros em ~/.config
for dir in "$REPO"/config/*/; do
    name=$(basename "$dir")
    case "$name" in
        mpd|systemd) ;;
        *) link "config/$name" "$HOME/.config/$name" ;;
    esac
done

# Arquivos soltos (esses diretórios têm estado local que não vai para o git)
link config/mpd/mpd.conf "$HOME/.config/mpd/mpd.conf"
for unit in "$REPO"/config/systemd/user/*; do
    link "config/systemd/user/$(basename "$unit")" "$HOME/.config/systemd/user/$(basename "$unit")"
done

# Arquivos do home
for file in "$REPO"/home/.[!.]*; do
    link "home/$(basename "$file")" "$HOME/$(basename "$file")"
done

# Scripts em ~/.local/bin
for script in "$REPO"/bin/*; do
    link "bin/$(basename "$script")" "$HOME/.local/bin/$(basename "$script")"
done

[ -f "$HOME/.config/bspwm/weather.key" ] || \
    echo "aviso: crie ~/.config/bspwm/weather.key com sua chave do OpenWeatherMap"
