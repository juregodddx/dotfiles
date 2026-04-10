# --- Plugins de Inteligência ---
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- O Prompt "Juregod" (O seu visual azul favorito) ---
PROMPT='%B%F{blue}➜ Juregod%f%b %F{white}%~%f %# '

# --- Central de Favoritos (Versão Power) ---
favs() {
    echo -e "\n\e[1;36m  󰄬 MEUS ATALHOS \e[0m"
    echo -e "  \e[1;30m──────────────────────────────\e[0m"
    
    echo -e "  \e[1;35m󰣇 SISTEMA\e[0m"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "update"  "Sincronizar Pacman/AUR"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "faxina"  "Limpar caches e órfãos"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "save"    "Criar Snapshot (Timeshift)"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "off"     "Desligar Notebook"
    
    echo -e "\n  \e[1;31m󰈐 NITRO SENSE\e[0m"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "nbstat"  "Ver Temperatura/RPM"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "nbturbo" "Coolers em 100%"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "nbsilent" "Coolers em 30% (Estudo)"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "nbauto"  "Gestão Automática"
    
    echo -e "\n  \e[1;36m󰲋 DEV & GAMES\e[0m"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "unity"   "Abrir Unity Hub"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "rider"   "Abrir JetBrains Rider"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "gamedev" "Pasta de Projetos"
    
    echo -e "\n  \e[1;33m󰚝 ACADÊMICO\e[0m"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "facul"   "Pasta Contabilidade"
    
    echo -e "\n  \e[1;32m󱇧 CONFIG\e[0m"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "zsh"     "Configurar Zsh"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "hypr"    "Configurar Hyprland"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "kitty"   "Configurar Kitty"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "reload"  "Resetar Shell"
    
    echo -e "\n  \e[1;34m󰉋 EXTRA\e[0m"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "btop"    "Monitor de Recursos"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "net"    "Velocidade de Rede"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "gpu"     "Status da GTX 1650"
    printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "limpar"  "Clear + Fetch"
    
    echo -e "  \e[1;30m──────────────────────────────\e[0m\n"
}

# --- Aliases de Sistema ---
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias matrix='cmatrix -C blue -s'
alias limpar='clear && fastfetch'
alias gpu='nvidia-smi'
alias off='sudo shutdown now'
alias btop='btop'
alias net='speedtest'

# --- Aliases dos Favoritos ---
alias update='yay -Syu'
alias faxina='sudo pacman -Rns $(pacman -Qtdq) && sudo pacman -Scc'
alias save='sudo timeshift --create --comments "Snapshot Manual"'
alias reload='source ~/.zshrc && clear && fastfetch'
alias zsh='nano ~/.zshrc'
alias hypr='nano ~/.config/hypr/hyprland.conf'
alias kitty='nano ~/.config/kitty/kitty.conf'

# --- Aliases Nitro Sense (NBFC) ---
alias nbstat='nbfc status -a'
alias nbturbo='sudo nbfc set -s 100'
alias nbauto='sudo nbfc set -a'
alias nbsilent='sudo nbfc set -s 30'

# --- Aliases Acadêmico/Dev (Ajuste os caminhos abaixo) ---
alias facul='cd ~/Documents/Contabilidade'
alias gamedev='cd ~/Documents/UnityProjects'
alias unity='unityhub'
alias rider='rider'

# --- Início Automático ---
clear
fastfetch

# =============================================================================
# KEYBINDS — Cheat sheet (digite 'keys' no terminal)
# =============================================================================
keys() {
  echo ""
  echo "  ╔══════════════════════════════════════════════════════════╗"
  echo "  ║           HYPRLAND KEYBINDS — Juregod                   ║"
  echo "  ╚══════════════════════════════════════════════════════════╝"
  echo ""
  echo "  ── SISTEMA ─────────────────────────────────────────────────"
  echo "  SUPER + T          → Terminal (Kitty)"
  echo "  SUPER + E          → Arquivos (Thunar)"
  echo "  SUPER + W          → Navegador (Firefox)"
  echo "  SUPER + R          → Launcher (Hyprlauncher)"
  echo "  SUPER + Q          → Fechar janela"
  echo "  SUPER + M          → Menu de energia"
  echo "  SUPER + SUPER      → Launcher Noctalia"
  echo "  SUPER + SHIFT + S  → Screenshot"
  echo "  SUPER + ALT + W    → Trocar wallpaper"
  echo ""
  echo "  ── JANELAS ─────────────────────────────────────────────────"
  echo "  SUPER + Setas      → Mover foco (cruza monitores na borda)"
  echo "  SUPER + SHIFT + Setas → Mover janela no tiling"
  echo "  SUPER + V          → Alternar flutuante/tiling"
  echo "  SUPER + F          → Tela cheia"
  echo "  SUPER + J          → Alternar split dwindle"
  echo "  SUPER + P          → Pin (fixa em todas as workspaces)"
  echo "  SUPER + ALT + P    → Pseudo tiling"
  echo "  CTRL + SUPER + \\   → Centralizar janela"
  echo "  SUPER + ALT + Setas → Redimensionar janela"
  echo "  SUPER + Mouse1     → Mover janela (arrastar)"
  echo "  SUPER + Mouse2     → Redimensionar janela (arrastar)"
  echo ""
  echo "  ── GRUPOS (ABAS) ────────────────────────────────────────────"
  echo "  SUPER + G          → Criar/entrar em grupo"
  echo "  SUPER + TAB        → Próxima janela do grupo"
  echo "  SUPER + SHIFT+TAB  → Janela anterior do grupo"
  echo ""
  echo "  ── SCRATCHPAD ───────────────────────────────────────────────"
  echo "  SUPER + S          → Mostrar/esconder scratchpad"
  echo "  SUPER + ALT + S    → Mandar janela pro scratchpad"
  echo ""
  echo "  ── MONITORES ────────────────────────────────────────────────"
  echo "  SUPER + ,          → Foco monitor esquerdo"
  echo "  SUPER + .          → Foco monitor direito"
  echo "  SUPER + SHIFT + ,  → Mover janela pro monitor esquerdo"
  echo "  SUPER + SHIFT + .  → Mover janela pro monitor direito"
  echo ""
  echo "  ── WORKSPACES ───────────────────────────────────────────────"
  echo "  SUPER + 1-0        → Ir para workspace 1-10"
  echo "  SUPER + ALT + 1-0  → Mover janela para workspace 1-10"
  echo "  SUPER + CTRL + →/← → Próxima/anterior workspace"
  echo "  SUPER + CTRL + Scroll → Navegar workspaces com mouse"
  echo ""
  echo "  ── MULTIMÍDIA ───────────────────────────────────────────────"
  echo "  Teclas de volume   → Volume +/-/mute"
  echo "  Teclas de brilho   → Brilho +/-"
  echo "  Teclas de mídia    → Play/pause/próx/ant"
  echo ""
}
