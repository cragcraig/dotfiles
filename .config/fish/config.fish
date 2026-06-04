set fish_greeting

fish_add_path ~/bin
fish_add_path ~/.local/bin

# MacOS only
if test -f /opt/homebrew/bin/
    fish_add_path /opt/homebrew/bin/
end

# Alias vi to nvim if it exists
if type -q nvim
    alias vi nvim
    set -x EDITOR nvim
else
    echo "WARNING: nvim is not available, falling back to vim"
    set -x EDITOR vi
end

alias config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Include secrets file (contains API keys, etc. that shouldn't be recorded in source control)
if test -f ~/.config/fish/secrets.fish
    source ~/.config/fish/secrets.fish
end

if status is-interactive
    # Commands to run in interactive sessions can go here

    # Gemini
    # NOTE: GEMINI_API_KEY is set by secrets.fish
    set -x NANOBANANA_MODEL gemini-3-pro-image-preview

    # My GenAI tools
    alias nb "python ~/gemini/genai-tools/nano-banana.py"

    # History
    abbr -a incognito set -x fish_history ''

    # rclone Google Drive
    abbr -a gdrive rclone mount gdrive: ~/gdrive
end

function fish_user_key_bindings
    # 1. Initialize Vi bindings first
    set -g fish_key_bindings fish_vi_key_bindings

    # 2. Re-apply Ctrl+R binding to history page
    bind -M insert \cr history-pager

    # 3. Set Up/Down arrow history prefix searching
    bind -M insert \e\[A history-prefix-search-backward
    bind -M insert \e\[B history-prefix-search-forward
end
