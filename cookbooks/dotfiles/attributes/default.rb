default['directory']['applications'] = %w[alacritty picom nvim dunst i3 zsh rofi]
default['directory']['user']  = 'mvaldes'
default['directory']['repos'] = "/home/#{node.default['directory']['user']}"

default['packages'] = %w[mpv xclip redshift nmap smartmontools wavemon rmlint mlocate cmatrix tldr fd ripgrep
                         progress tree rsync rclone prettyping bat ncdu neovim zsh jq docker fzf httpie neofetch github-cli tmux
                         starship exa bluez bluez-tools betterlockscreen xidlehook pulseaudio stow feh spotify flameshot pasystray bumblebee-status openrgb]
default['repos'] = %w[terraform terraform.nvim ansible_playbooks blog chef]
