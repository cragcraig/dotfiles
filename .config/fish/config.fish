set fish_greeting
set -x EDITOR nvim

fish_add_path ~/bin
fish_add_path ~/.local/bin

# MacOS only
if test -f /opt/homebrew/bin/
    fish_add_path /opt/homebrew/bin/
end

alias vi nvim
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
