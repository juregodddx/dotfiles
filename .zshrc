# --- Plugins de Inteligência ---
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- O Prompt "Juregod" (O seu visual azul favorito) ---
PROMPT='%B%F{blue}➜ Juregod%f%b %F{white}%~%f %# '

# --- Central de Favoritos Dinâmica (Versão Power Automática) ---
favs() {
    echo -e "\n\e[1;36m  󰄬 MEUS ATALHOS \e[0m"
    echo -e "  \e[1;30m──────────────────────────────\e[0m\n"

    # Categorias e cores (SISTEMA agora no topo!)
    local categorias=("SISTEMA" "CONFIG" "DEV_GAMES" "ACADEMICO" "NITRO_SENSE" "EXTRA")
    local titulos=("󰣇 SISTEMA" "󱇧 CONFIGURAÇÕES" "󰲋 DEV & GAMES" "󰚝 ACADÊMICO" "󰈐 NITRO SENSE" "󰉋 EXTRA")
    local cores=("\e[1;35m" "\e[1;32m" "\e[1;36m" "\e[1;33m" "\e[1;31m" "\e[1;34m")

    for i in {1..6}; do
        local cat=${categorias[$i]}
        local titulo=${titulos[$i]}
        local cor=${cores[$i]}

        local linhas=$(grep "# FAVS: $cat |" ~/.zshrc)

        if [[ -n "$linhas" ]]; then
            echo -e "  ${cor}${titulo}\e[0m"
            echo "$linhas" | while read -r linha; do
                local cmd=$(echo "$linha" | sed -n 's/^[[:space:]]*alias \([^=]*\)=.*/\1/p')
                local desc=$(echo "$linha" | awk -F'| ' '{print $2}')
                printf "  \e[1;33m%-8s\e[0m \e[1;30m•\e[0m \e[37m%s\e[0m\n" "$cmd" "$desc"
            done
            echo ""
        fi
    done
    echo -e "  \e[1;30m──────────────────────────────\e[0m\n"
}

# --- Aliases Básicos ---
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias matrix='cmatrix -C blue -s'

# =============================================================================
# --- ALIASES MAPEADOS NO MENU FAVS ---
# =============================================================================

# SISTEMA (Grupo no topo com Git e Reload)
alias update='yay -Syu' # FAVS: SISTEMA | Sincronizar Pacman/AUR
alias faxina='sudo pacman -Rns $(pacman -Qtdq) && sudo pacman -Scc' # FAVS: SISTEMA | Limpar caches e órfãos
alias save='sudo timeshift --create --comments "Snapshot Manual"' # FAVS: SISTEMA | Criar Snapshot Timeshift
alias dotsave='cd ~/dotfiles && cp -r ~/.config/hypr . && cp -r ~/.config/kitty . && cp ~/.zshrc . && /usr/bin/git add . && /usr/bin/git commit -m "Update dotfiles" && /usr/bin/git push origin main && cd -' # FAVS: SISTEMA | Backup GitHub
alias reload='source ~/.zshrc && clear && fastfetch' # FAVS: SISTEMA | Resetar Shell e Menu
alias off='sudo shutdown now' # FAVS: SISTEMA | Desligar Notebook

# CONFIGURAÇÕES
alias zsh='nano ~/.zshrc' # FAVS: CONFIG | Configurar Zsh
alias hypr='nano ~/.config/hypr/hyprland.conf' # FAVS: CONFIG | Configurar Hyprland
alias kitty='nano ~/.config/kitty/kitty.conf' # FAVS: CONFIG | Configurar Kitty

# DEV & GAMES
alias unity='unityhub' # FAVS: DEV_GAMES | Abrir Unity Hub
alias rider='rider' # FAVS: DEV_GAMES | Abrir JetBrains Rider
alias gamedev='cd ~/Documents/UnityProjects' # FAVS: DEV_GAMES | Pasta de Projetos

# ACADÊMICO
alias facul='cd ~/Documents/Contabilidade' # FAVS: ACADEMICO | Pasta Contabilidade (UFF)

# NITRO SENSE
alias nbstat='nbfc status -a' # FAVS: NITRO_SENSE | Ver Temperatura/RPM
alias nbturbo='sudo nbfc set -s 100' # FAVS: NITRO_SENSE | Coolers em 100%
alias nbauto='sudo nbfc set -a' # FAVS: NITRO_SENSE | Gestão Automática
alias nbsilent='sudo nbfc set -s 30' # FAVS: NITRO_SENSE | Coolers em 30% (Estudo)

# EXTRAS
alias btop='btop' # FAVS: EXTRA | Monitor de Recursos
alias net='speedtest' # FAVS: EXTRA | Velocidade de Rede
alias gpu='nvidia-smi' # FAVS: EXTRA | Status da GTX 1650
alias hora='tty-clock -c -C 4 -s -b' # FAVS: EXTRA | Relógio Digital Azul
alias limpar='clear && fastfetch' # FAVS: EXTRA | Clear + Fetch

# --- Início Automático ---
clear
fastfetch

# =============================================================================
# KEYBINDS — Cheat sheet (digite 'keys' no terminal)
# =============================================================================
keys() {
  # (Mantenha o conteúdo da função keys que você já tinha)
  echo "Digite 'favs' para ver os atalhos de sistema ou 'keys' para o Hyprland."
}
