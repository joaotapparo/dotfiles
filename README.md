# dotfiles

Meu ambiente Arch Linux com **bspwm**: um tema único (h4ck3r, verde/azul) e terminal **Alacritty**.

## Estrutura

```
config/          → ~/.config/<nome>   (symlink do diretório inteiro)
  bspwm/
    bspwmrc        inicialização do WM
    theme.bash     cores e opções do tema (fonte única)
    bin/           scripts (Theme.sh, Term, WallSelect, ScreenLocker...)
    config/        sxhkdrc (atalhos), picom, rofi, módulos de cor
    bar/           polybar
    eww/           widgets
    walls/         wallpapers
  alacritty/ dunst/ nvim/ yazi/ mpv/ ...
  mpd/mpd.conf, systemd/user/*  (só esses arquivos são linkados)
home/            → ~/.zshrc, ~/.gtkrc-2.0
bin/             → ~/.local/bin
```

## Instalar

```sh
./install.sh
```

Cria os symlinks. O que já existir no lugar vai para `~/.dotfiles-backup/<data>/`.

## Mudar o tema

1. Edite `config/bspwm/theme.bash`.
2. Rode `~/.config/bspwm/bin/Theme.sh`.

Os módulos em `config/bspwm/config/modules/` geram as configs de cada app (polybar, alacritty,
dunst, rofi, eww, nvim, zathura, picom, gtk...) a partir dessas cores.

## Clima (polybar)

O script `Weather` precisa de uma chave gratuita do [OpenWeatherMap](https://openweathermap.org/api),
em `~/.config/bspwm/weather.key` ou na variável `OWM_API_KEY`. Esse arquivo não vai para o git.

## Pacotes principais

`bspwm sxhkd polybar picom eww-git rofi dunst feh alacritty jgmenu xsettingsd clipcat lxsession`
`i3lock-color imagemagick jq xdo yazi neovim mpd ncmpcpp mpv`

Tema GTK, ícones e cursor: `gh0stzk-gtk-themes gh0stzk-icons-hack gh0stzk-icons-beautyline gh0stzk-cursor-qogirr`.

## Créditos e licença

Baseado nos dotfiles de [gh0stzk](https://github.com/gh0stzk/dotfiles) (Copyright (C) 2021-2026 gh0stzk),
modificado por João Tápparo. Distribuído sob a licença GPL-3.0, veja [LICENSE](LICENSE).
