if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch -l arch_small
    fish_add_path ~/Downloads/Discord
end
# Принудительное переопределение
set -gx ANDROID_HOME /home/max-s/Android/Sdk

# Добавление путей
fish_add_path -g $ANDROID_HOME/cmdline-tools/latest/bin
fish_add_path -g $ANDROID_HOME/platform-tools
