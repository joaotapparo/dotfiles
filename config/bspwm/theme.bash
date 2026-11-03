#############################
#     Navy & Red Theme      #
#############################

# Base
bg="#0b1530"            # azul-marinho
bg_alt="#000b1530"
fg="#e8ecf5"            # texto quase branco
trans="#000b1530"

accent="#e4002b"        # vermelho (destaque principal)
accent_alt="#ffc72c"    # dourado (detalhes)
accent_color="#16244d"  # fundo dos blocos da barra / seleção

# Terminal (ANSI)
black="#1c2a55"
red="#e4002b"
green="#3ddc97"
yellow="#ffc72c"
blue="#3a7bfd"
magenta="#ff4d6d"
cyan="#5ccfe6"
white="#c8d0e0"
blackb="#3a4a7a"
redb="#ff3355"
greenb="#7ff0bf"
yellowb="#ffd866"
blueb="#6f9dff"
magentab="#ff7a93"
cyanb="#8fe3f2"
whiteb="#ffffff"

# Extend
purple="#7b6cf6"
amber="#ffc72c"
pink="#ff4d6d"
orange="#ff7a3d"
indigo="#3f51b5"
lime="#b9c244"
grey="#5b6b94"
bluegray="#8a97b8"

arch_icon="$accent"


# Bspwm options
BORDER_WIDTH="2"		# Bspwm border
TOP_PADDING="1"
BOTTOM_PADDING="1"
LEFT_PADDING="1"
RIGHT_PADDING="1"
NORMAL_BC="$accent_color"      # Normal border color
FOCUSED_BC="$accent"    # Focused border color

# Terminal font & size
term_font_size="10"
term_font_name="JetBrainsMono Nerd Font"

# Picom options
P_FADE="false"			# Fade true|false
P_SHADOWS="true"		# Shadows true|false
SHADOW_C="#000000"		# Shadow color
P_CORNER_R="6"			# Corner radius (0 = disabled)
P_BLUR="false"			# Blur true|false
P_ANIMATIONS="#"		# (@ = enable) (# = disable)
P_TERM_OPACITY="1.0"	# Terminal transparency. Range: 0.1 - 1.0 (1.0 = disabled)

# Dunst
dunst_offset='(0, 60)'
dunst_origin='top-center'
dunst_transparency='0'
dunst_corner_radius='0'
dunst_font='JetBrainsMono NF Medium 9'
dunst_border='2'
dunst_frame_color="$accent"
dunst_icon_theme="BeautyLine"
# Dunst animations
dunst_close_preset="fly-out"
dunst_close_direction="up"
dunst_open_preset="fly-in"
dunst_open_direction="up"

# Jgmenu colors
jg_bg="$bg"
jg_fg="$fg"
jg_sel_bg="$accent_color"
jg_sel_fg="$fg"
jg_sep="$grey"

# Rofi menu font and colors
rofi_font="JetBrainsMono NF Bold 9"
rofi_background="$bg"
rofi_bg_alt="$accent_color"
rofi_background_alt="${bg}E0"
rofi_fg="$fg"
rofi_selected="$accent"
rofi_active="$accent_alt"
rofi_urgent="$magenta"

# Screenlocker
sl_bg="${bg}"
sl_fg="${fg}"
sl_ring="${accent}"
sl_wrong="${red}"
sl_date="${fg}"
sl_verify="${accent_alt}"

# Gtk theme
gtk_theme="TokyoNight-zk"
gtk_icons="Papirus-Dark"
gtk_cursor="Qogirr-Dark"

# Wallpaper engine
# Available engines:
# - Random  (Set a random wallpaper from ~/.config/bspwm/walls)
# - CustomDir   (Set a random wallpaper from the directory you specified)
# - Default (Sets a specific image as wallpaper) *Default
# - Animated (Set an animated wallpaper. "mp4, mkv, gif")
# - Slideshow (Change randomly every 15 minutes your wallpaper from ~/.config/bspwm/walls)
ENGINE="Default"

CUSTOM_DIR="/path/to/your/wallpapers/directory"
DEFAULT_WALL="$HOME/.config/bspwm/walls/navy-red.webp"
ANIMATED_WALL="$HOME/.config/bspwm/config/assets/animated_wall.mp4"
