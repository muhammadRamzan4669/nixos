  {config, pkgs,  ... }:

  {
    home.username = "lynx";
    home.homeDirectory = "/home/lynx";
    home.stateVersion = "24.11";
    home.file.".p10k.zsh".source = ./p10k.zsh;

    programs.zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;
  
      shellAliases = {
	btw = "echo i use Nix Os BY THE WAY!";
      };
    };

    home.packages = with pkgs; [
     # zsh-powerlevel10k
    ];

  }
