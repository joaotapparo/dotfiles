#!/bin/sh
# Pastas coloridas no Papirus-Dark sem sudo (mesma ideia do papirus-folders).
# Use gtk_icons="Papirus-Dark-<cor>" no theme.bash (ex.: Papirus-Dark-red).
# Cria ~/.local/share/icons/Papirus-Dark-<cor>, que herda o Papirus-Dark e só
# aponta os ícones de pasta para a variante da cor escolhida.

case "$gtk_icons" in
    Papirus-Dark-*) ;;
    *) return 0 ;;
esac

_pf_color=${gtk_icons#Papirus-Dark-}
_pf_src=/usr/share/icons/Papirus-Dark
_pf_dst="$HOME/.local/share/icons/$gtk_icons"

if [ -d "$_pf_src" ] && [ ! -f "$_pf_dst/index.theme" ]; then
    _pf_dirs=""
    for _pf_places in "$_pf_src"/*/places; do
        _pf_size=$(basename "$(dirname "$_pf_places")")
        mkdir -p "$_pf_dst/$_pf_size/places"
        find "$_pf_places" -maxdepth 1 -type l | while read -r _pf_link; do
            _pf_target=$(basename "$(readlink -f "$_pf_link")")  # segue a cadeia de links
            case "$_pf_target" in
                *-blue-*|*-blue.svg) ;;
                *) continue ;;
            esac
            _pf_new=$(printf '%s' "$_pf_target" | sed "s/-blue\([-.]\)/-${_pf_color}\1/")
            [ -e "$_pf_places/$_pf_new" ] &&
                ln -sf "$_pf_places/$_pf_new" "$_pf_dst/$_pf_size/places/$(basename "$_pf_link")"
        done
        _pf_dirs="${_pf_dirs:+$_pf_dirs,}$_pf_size/places"
    done

    {
        printf '[Icon Theme]\nName=%s\nComment=Papirus-Dark com pastas %s\nInherits=Papirus-Dark,breeze-dark,hicolor\nDirectories=%s\n' \
            "$gtk_icons" "$_pf_color" "$_pf_dirs"
        # Reaproveita Size/Scale/Context/Type de cada diretório do Papirus-Dark
        for _pf_dir in $(printf '%s' "$_pf_dirs" | tr ',' ' '); do
            printf '\n'
            sed -n "/^\[${_pf_dir%/places}\/places\]$/,/^$/p" "$_pf_src/index.theme" | sed '/^$/d'
        done
    } > "$_pf_dst/index.theme"

    gtk-update-icon-cache -q -f "$_pf_dst" 2>/dev/null
fi

unset _pf_color _pf_src _pf_dst _pf_dirs _pf_places _pf_size _pf_link _pf_target _pf_new _pf_dir
