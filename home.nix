  {config, pkgs,  ... }:

  {
    home.username = "lynx";
    home.homeDirectory = "/home/lynx";
    home.stateVersion = "24.11";

    programs.zsh = {
      enable = true;
      shellAliases = {
	btw = "echo i use Nix Os BY THE WAY!";
      };
      #syntaxHighlighting = true;
    };
    

  }
