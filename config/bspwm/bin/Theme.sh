#!/bin/sh
# Aplica o tema (cores em ~/.config/bspwm/theme.bash) e inicia a barra.
# Os módulos em config/modules geram as configs de cada app a partir das cores.
# Rode de novo depois de editar theme.bash para aplicar as mudanças.

BSPWM_DIR="$HOME/.config/bspwm"
. "$BSPWM_DIR/theme.bash"

# Wait until no process with this exact name is running
wait_for_termination() {
    while pgrep -x "$1" >/dev/null; do
        sleep 0.3
    done
}

# Stop running bar and wallpaper processes before relaunching
if pgrep -x polybar >/dev/null 2>&1; then
    polybar-msg cmd quit >/dev/null 2>&1
    wait_for_termination polybar
fi

if pkill xwinwrap >/dev/null 2>&1; then
    wait_for_termination xwinwrap
fi

if [ -f /tmp/wall_refresh.pid ]; then
    kill "$(cat /tmp/wall_refresh.pid)" 2>/dev/null
    rm -f /tmp/wall_refresh.pid
fi

# Write data atomically, avoiding partial writes and file corruption.
_write() {
    target=$1
    tmp=$(mktemp "$(dirname "$target")/.tmp.XXXXXX") || return 1
    cat >"$tmp" || { rm -f "$tmp"; return 1; }
    mv -f "$tmp" "$target" || { rm -f "$tmp"; return 1; }
}

# Load all the modules
for module in "$BSPWM_DIR"/config/modules/*.sh; do
    [ -e "$module" ] && . "$module"
done
unset module

# Launch the bar on every monitor
for mon in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$mon polybar -q c0mrad -c "$BSPWM_DIR/bar/config.ini" &
done
