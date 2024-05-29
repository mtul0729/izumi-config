{ config, pkgs, ... }:

{
  imports = [
    ./programs/vscode.nix
  ];
  # 通过 home.packages 安装一些常用的软件
  # 这些软件将仅在当前用户下可用，不会影响系统级别的配置
  # 建议将所有 GUI 软件，以及与 OS 关系不大的 CLI 软件，都通过 home.packages 安装
  home.packages = with pkgs;[
    # 如下是我常用的一些命令行工具，你可以根据自己的需要进行增删
    fastfetch
    nnn # terminal file manager

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    bat
    ripgrep # recursively searches directories for a regex pattern
    fd # simple, fast and user-friendly alternative to find

    firefox
    telegram-desktop
    gh
    kdePackages.discover

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

  ];

  # git 相关配置
  programs.git = {
    enable = true;
    userName = "huangcpp";
    userEmail = "min@max.mean";
  };
}
