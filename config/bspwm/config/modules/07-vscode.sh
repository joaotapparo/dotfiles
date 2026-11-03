#!/bin/sh
# Tema de cores do VS Code (Code - OSS) gerado a partir do theme.bash.
# Na primeira vez, empacota e instala a extensão local "local.navy-red-theme";
# depois só reescreve o arquivo de cores dentro dela.

command -v code >/dev/null 2>&1 || return 0

_vsc_ext="$HOME/.vscode-oss/extensions/local.navy-red-theme-1.0.0"
_vsc_settings="$HOME/.config/Code - OSS/User/settings.json"

_vsc_theme() {
cat <<EOF
{
  "name": "Navy Red",
  "type": "dark",
  "semanticHighlighting": true,
  "colors": {
    "focusBorder": "${accent}",
    "foreground": "${fg}",
    "descriptionForeground": "${bluegray}",
    "errorForeground": "${redb}",
    "selection.background": "${accent}55",
    "widget.border": "${accent_color}",
    "icon.foreground": "${fg}",

    "editor.background": "${bg}",
    "editor.foreground": "${fg}",
    "editorLineNumber.foreground": "${grey}",
    "editorLineNumber.activeForeground": "${accent}",
    "editorCursor.foreground": "${accent}",
    "editor.selectionBackground": "${accent}40",
    "editor.inactiveSelectionBackground": "${accent}22",
    "editor.selectionHighlightBackground": "${accent_alt}22",
    "editor.wordHighlightBackground": "${accent_alt}22",
    "editor.findMatchBackground": "${accent_alt}55",
    "editor.findMatchHighlightBackground": "${accent_alt}30",
    "editor.lineHighlightBackground": "${accent_color}80",
    "editor.lineHighlightBorder": "#00000000",
    "editorIndentGuide.background1": "${accent_color}",
    "editorIndentGuide.activeBackground1": "${grey}",
    "editorWhitespace.foreground": "${accent_color}",
    "editorBracketMatch.background": "${accent}30",
    "editorBracketMatch.border": "${accent}",
    "editorGutter.addedBackground": "${green}",
    "editorGutter.modifiedBackground": "${accent_alt}",
    "editorGutter.deletedBackground": "${accent}",
    "editorError.foreground": "${redb}",
    "editorWarning.foreground": "${accent_alt}",
    "editorWidget.background": "${bg}",
    "editorWidget.border": "${accent_color}",
    "editorSuggestWidget.background": "${bg}",
    "editorSuggestWidget.border": "${accent_color}",
    "editorSuggestWidget.selectedBackground": "${accent_color}",
    "editorSuggestWidget.highlightForeground": "${accent}",
    "editorHoverWidget.background": "${bg}",
    "editorHoverWidget.border": "${accent_color}",
    "editorGroupHeader.tabsBackground": "${bg}",
    "editorGroup.border": "${accent_color}",

    "tab.activeBackground": "${bg}",
    "tab.activeForeground": "${fg}",
    "tab.activeBorderTop": "${accent}",
    "tab.inactiveBackground": "${bg}",
    "tab.inactiveForeground": "${grey}",
    "tab.border": "${bg}",
    "tab.hoverBackground": "${accent_color}",

    "activityBar.background": "${bg}",
    "activityBar.foreground": "${fg}",
    "activityBar.inactiveForeground": "${grey}",
    "activityBar.activeBorder": "${accent}",
    "activityBar.border": "${accent_color}",
    "activityBarBadge.background": "${accent}",
    "activityBarBadge.foreground": "${whiteb}",

    "sideBar.background": "${bg}",
    "sideBar.foreground": "${white}",
    "sideBar.border": "${accent_color}",
    "sideBarTitle.foreground": "${fg}",
    "sideBarSectionHeader.background": "${bg}",
    "sideBarSectionHeader.foreground": "${fg}",
    "sideBarSectionHeader.border": "${accent_color}",

    "list.activeSelectionBackground": "${accent_color}",
    "list.activeSelectionForeground": "${fg}",
    "list.inactiveSelectionBackground": "${accent_color}99",
    "list.hoverBackground": "${accent_color}80",
    "list.focusOutline": "${accent}",
    "list.highlightForeground": "${accent}",

    "titleBar.activeBackground": "${bg}",
    "titleBar.activeForeground": "${fg}",
    "titleBar.inactiveBackground": "${bg}",
    "titleBar.inactiveForeground": "${grey}",
    "titleBar.border": "${accent_color}",

    "statusBar.background": "${bg}",
    "statusBar.foreground": "${bluegray}",
    "statusBar.border": "${accent_color}",
    "statusBar.debuggingBackground": "${accent}",
    "statusBar.debuggingForeground": "${whiteb}",
    "statusBar.noFolderBackground": "${bg}",
    "statusBarItem.remoteBackground": "${accent}",
    "statusBarItem.remoteForeground": "${whiteb}",

    "panel.background": "${bg}",
    "panel.border": "${accent_color}",
    "panelTitle.activeBorder": "${accent}",
    "panelTitle.activeForeground": "${fg}",
    "panelTitle.inactiveForeground": "${grey}",

    "input.background": "${accent_color}",
    "input.foreground": "${fg}",
    "input.border": "${accent_color}",
    "input.placeholderForeground": "${grey}",
    "inputOption.activeBorder": "${accent}",
    "dropdown.background": "${accent_color}",
    "dropdown.border": "${accent_color}",

    "button.background": "${accent}",
    "button.foreground": "${whiteb}",
    "button.hoverBackground": "${redb}",
    "button.secondaryBackground": "${accent_color}",
    "button.secondaryForeground": "${fg}",
    "badge.background": "${accent}",
    "badge.foreground": "${whiteb}",
    "progressBar.background": "${accent}",
    "checkbox.background": "${accent_color}",
    "checkbox.border": "${grey}",
    "textLink.foreground": "${blueb}",
    "textLink.activeForeground": "${accent}",

    "scrollbarSlider.background": "${accent_color}99",
    "scrollbarSlider.hoverBackground": "${grey}99",
    "scrollbarSlider.activeBackground": "${accent}99",

    "terminal.background": "${bg}",
    "terminal.foreground": "${fg}",
    "terminalCursor.foreground": "${accent}",
    "terminal.ansiBlack": "${black}",
    "terminal.ansiRed": "${red}",
    "terminal.ansiGreen": "${green}",
    "terminal.ansiYellow": "${yellow}",
    "terminal.ansiBlue": "${blue}",
    "terminal.ansiMagenta": "${magenta}",
    "terminal.ansiCyan": "${cyan}",
    "terminal.ansiWhite": "${white}",
    "terminal.ansiBrightBlack": "${blackb}",
    "terminal.ansiBrightRed": "${redb}",
    "terminal.ansiBrightGreen": "${greenb}",
    "terminal.ansiBrightYellow": "${yellowb}",
    "terminal.ansiBrightBlue": "${blueb}",
    "terminal.ansiBrightMagenta": "${magentab}",
    "terminal.ansiBrightCyan": "${cyanb}",
    "terminal.ansiBrightWhite": "${whiteb}",

    "gitDecoration.modifiedResourceForeground": "${accent_alt}",
    "gitDecoration.untrackedResourceForeground": "${green}",
    "gitDecoration.deletedResourceForeground": "${accent}",
    "gitDecoration.ignoredResourceForeground": "${grey}",
    "notifications.background": "${bg}",
    "notifications.border": "${accent_color}",
    "notificationCenterHeader.background": "${accent_color}",
    "quickInput.background": "${bg}",
    "quickInputList.focusBackground": "${accent_color}",
    "menu.background": "${bg}",
    "menu.selectionBackground": "${accent_color}",
    "menu.border": "${accent_color}",
    "peekView.border": "${accent}",
    "peekViewEditor.background": "${bg}",
    "peekViewResult.background": "${bg}",
    "peekViewTitle.background": "${accent_color}",
    "breadcrumb.foreground": "${grey}",
    "breadcrumb.focusForeground": "${fg}"
  },
  "tokenColors": [
    { "scope": ["comment", "punctuation.definition.comment"], "settings": { "foreground": "${grey}", "fontStyle": "italic" } },
    { "scope": ["keyword", "storage", "storage.type", "storage.modifier", "keyword.control"], "settings": { "foreground": "${accent}" } },
    { "scope": ["keyword.operator", "punctuation", "meta.brace"], "settings": { "foreground": "${bluegray}" } },
    { "scope": ["string", "string.quoted", "string.template"], "settings": { "foreground": "${accent_alt}" } },
    { "scope": ["constant.character.escape", "string.regexp"], "settings": { "foreground": "${cyan}" } },
    { "scope": ["constant.numeric", "constant.language", "constant.other", "variable.other.constant"], "settings": { "foreground": "${magenta}" } },
    { "scope": ["entity.name.function", "support.function", "meta.function-call"], "settings": { "foreground": "${blueb}" } },
    { "scope": ["entity.name.type", "entity.name.class", "support.type", "support.class", "entity.other.inherited-class"], "settings": { "foreground": "${cyan}" } },
    { "scope": ["variable", "variable.other", "meta.definition.variable"], "settings": { "foreground": "${fg}" } },
    { "scope": ["variable.parameter"], "settings": { "foreground": "${white}", "fontStyle": "italic" } },
    { "scope": ["variable.language", "variable.language.this", "variable.language.self"], "settings": { "foreground": "${redb}", "fontStyle": "italic" } },
    { "scope": ["entity.name.tag", "meta.tag"], "settings": { "foreground": "${accent}" } },
    { "scope": ["entity.other.attribute-name", "support.type.property-name"], "settings": { "foreground": "${accent_alt}" } },
    { "scope": ["markup.heading", "entity.name.section"], "settings": { "foreground": "${accent}", "fontStyle": "bold" } },
    { "scope": ["markup.bold"], "settings": { "fontStyle": "bold" } },
    { "scope": ["markup.italic"], "settings": { "fontStyle": "italic" } },
    { "scope": ["markup.inline.raw", "markup.fenced_code"], "settings": { "foreground": "${accent_alt}" } },
    { "scope": ["markup.underline.link"], "settings": { "foreground": "${blueb}" } },
    { "scope": ["markup.inserted"], "settings": { "foreground": "${green}" } },
    { "scope": ["markup.deleted", "invalid"], "settings": { "foreground": "${redb}" } }
  ]
}
EOF
}

# Primeira instalação: empacota um .vsix mínimo e instala pelo CLI do VS Code
if [ ! -d "$_vsc_ext" ]; then
    _vsc_tmp=$(mktemp -d)
    mkdir -p "$_vsc_tmp/extension/themes"
    cat > "$_vsc_tmp/extension/package.json" <<'EOF'
{
  "name": "navy-red-theme",
  "displayName": "Navy Red",
  "description": "Tema gerado a partir do theme.bash do bspwm",
  "version": "1.0.0",
  "publisher": "local",
  "engines": { "vscode": "^1.60.0" },
  "categories": ["Themes"],
  "contributes": {
    "themes": [{ "label": "Navy Red", "uiTheme": "vs-dark", "path": "./themes/navy-red-color-theme.json" }]
  }
}
EOF
    _vsc_theme > "$_vsc_tmp/extension/themes/navy-red-color-theme.json"
    cat > "$_vsc_tmp/extension.vsixmanifest" <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<PackageManifest Version="2.0.0" xmlns="http://schemas.microsoft.com/developer/vsx-schema/2011">
  <Metadata>
    <Identity Language="en-US" Id="navy-red-theme" Version="1.0.0" Publisher="local"/>
    <DisplayName>Navy Red</DisplayName>
    <Description xml:space="preserve">Tema gerado a partir do theme.bash do bspwm</Description>
    <Categories>Themes</Categories>
    <Properties>
      <Property Id="Microsoft.VisualStudio.Code.Engine" Value="^1.60.0"/>
    </Properties>
  </Metadata>
  <Installation><InstallationTarget Id="Microsoft.VisualStudio.Code"/></Installation>
  <Dependencies/>
  <Assets>
    <Asset Type="Microsoft.VisualStudio.Code.Manifest" Path="extension/package.json" Addressable="true"/>
  </Assets>
</PackageManifest>
EOF
    cat > "$_vsc_tmp/[Content_Types].xml" <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension=".json" ContentType="application/json"/>
  <Default Extension=".vsixmanifest" ContentType="text/xml"/>
</Types>
EOF
    (cd "$_vsc_tmp" && python3 -I -c 'import sys,zipfile,os
z=zipfile.ZipFile("theme.vsix","w",zipfile.ZIP_DEFLATED)
for root,_,files in os.walk("."):
    for f in files:
        if f!="theme.vsix": z.write(os.path.join(root,f), os.path.relpath(os.path.join(root,f),"."))
z.close()')
    code --install-extension "$_vsc_tmp/theme.vsix" --force >/dev/null 2>&1
    rm -rf "$_vsc_tmp"
fi

# Atualiza as cores (o VS Code recarrega o tema ao detectar a mudança)
if [ -d "$_vsc_ext/themes" ]; then
    _vsc_theme | _write "$_vsc_ext/themes/navy-red-color-theme.json"
fi

# Seleciona o tema nas configurações do usuário
if [ ! -f "$_vsc_settings" ]; then
    mkdir -p "$(dirname "$_vsc_settings")"
    printf '{\n    "workbench.colorTheme": "Navy Red"\n}\n' > "$_vsc_settings"
elif ! grep -q '"workbench.colorTheme"' "$_vsc_settings"; then
    python3 -I - "$_vsc_settings" <<'EOF' 2>/dev/null
import json, sys
p = sys.argv[1]
d = json.load(open(p))
d["workbench.colorTheme"] = "Navy Red"
json.dump(d, open(p, "w"), indent=4)
EOF
fi

unset _vsc_ext _vsc_settings _vsc_tmp
