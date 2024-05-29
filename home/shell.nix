{ config, pkgs, ... }:

{
  # 启用 starship，这是一个漂亮的 shell 提示符
  programs.starship = {
    enable = true;
    # 自定义配置
    settings = {
      # add_newline = false;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = true;
    };
  };

  programs.bash = {
    enable = true;
  };

  programs.fish = {
    enable = true;
  };
  
  programs.nushell.enable = true;
}