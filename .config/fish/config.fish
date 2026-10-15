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

# CUDA
set -x PATH /opt/cuda/bin $PATH
set -x LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH

# NVIDIA + Wayland (важно!)
set -x GBM_BACKEND nvidia-drm
set -x __GLX_VENDOR_LIBRARY_NAME nvidia
set -x WLR_NO_HARDWARE_CURSORS 1
