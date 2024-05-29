{ config
, pkgs
, home-manager
, nix-vscode-extensions
, ...
}:

{

  # if use vscode in wayland, uncomment this line
  # environment.sessionVariables.NIXOS_OZONE_WL = "1";
  programs.vscode = {
    enable = true;
    extensions = with nix-vscode-extensions.extensions.x86_64-linux.vscode-marketplace; [
      aaron-bond.better-comments
      anweber.vscode-httpyac
      arrterian.nix-env-selector
      bierner.markdown-mermaid
      # cschlosser.doxdocgen
      eamodio.gitlens
      # esbenp.prettier-vscode
      # espressif.esp-idf-extension
      github.copilot
      github.copilot-chat
      # golang.go
      hashicorp.terraform
      janisdd.vscode-edit-csv
      # jebbs.plantuml
      jeff-hykin.better-cpp-syntax
      jnoortheen.nix-ide
      llvm-vs-code-extensions.vscode-clangd
      mikestead.dotenv
      mkhl.direnv
      ms-azuretools.vscode-docker
      ms-dotnettools.vscode-dotnet-runtime
      ms-kubernetes-tools.vscode-kubernetes-tools
      ms-python.isort
      ms-python.python
      ms-python.vscode-pylance
      ms-toolsai.jupyter
      ms-toolsai.jupyter-keymap
      ms-toolsai.jupyter-renderers
      ms-toolsai.vscode-jupyter-cell-tags
      ms-toolsai.vscode-jupyter-slideshow
      ms-vscode-remote.remote-containers
      ms-vscode-remote.remote-ssh
      ms-vscode-remote.remote-ssh-edit
      ms-vscode-remote.vscode-remote-extensionpack
      ms-vscode.cmake-tools
      ms-vscode.cpptools
      ms-vscode.cpptools-extension-pack
      ms-vscode.cpptools-themes
      ms-vscode.remote-explorer
      ms-vscode.remote-server
      pinage404.nix-extension-pack
      platformio.platformio-ide
      pomdtr.excalidraw-editor
      redhat.vscode-commons
      redhat.vscode-xml
      redhat.vscode-yaml
      rust-lang.rust-analyzer
      shd101wyy.markdown-preview-enhanced
      sumneko.lua
      tamasfe.even-better-toml
      timonwong.shellcheck
      # twxs.cmake
      vadimcn.vscode-lldb
      # visualstudioexptteam.intellicode-api-usage-examples
      visualstudioexptteam.vscodeintellicode
      vscode-icons-team.vscode-icons
      # wakatime.vscode-wakatime
      yzhang.markdown-all-in-one
    ];
    # package = pkgs.vscode;
  };
}
