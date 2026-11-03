#!/bin/sh
# Gera um tema GTK próprio (gtk_theme) recolorindo um tema base com as cores do theme.bash.
# Só reconstrói quando a base ou as cores mudam.

[ -n "$gtk_theme_base" ] || return 0

_gc_base="/usr/share/themes/$gtk_theme_base"
_gc_dest="$HOME/.local/share/themes/$gtk_theme"
_gc_stamp="$gtk_theme_base $accent $bg $fg"

if [ -d "$_gc_base" ] && [ "$(cat "$_gc_dest/.stamp" 2>/dev/null)" != "$_gc_stamp" ]; then
    mkdir -p "$HOME/.local/share/themes"
    python3 -I "$HOME/.config/bspwm/bin/gtk-recolor" "$_gc_base" "$_gc_dest" "$gtk_theme" "$accent" "$bg" "$fg" &&
        printf '%s' "$_gc_stamp" > "$_gc_dest/.stamp"
fi

unset _gc_base _gc_dest _gc_stamp
