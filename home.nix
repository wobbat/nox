{ config, pkgs, ... }:

{
  home.username = "stan";
  home.homeDirectory = "/home/stan";
  home.stateVersion = "23.11";

  imports = [
    #./additional/editors.nix
    #./additional/shell.nix
  ];


  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;

  home.packages = with pkgs; [
    htop
    eza
    fish
    starship
    openvpn
  # rust
    rustc
    cargo
    rustfmt
    rust-analyzer
    clippy
    neovim
  ];

 home.file = {
    "fish" = {
      source = ./config/fish;
      target = "./.config/fish";
    };
    "starship" = {
      source = ./config/starship/starship.toml;
      target = "./.config/starship.toml";
    };
     "neovim" = {
      source = ./config/neovim;
      target = "./.config/neovim"; 
    };
    

  };


# home.file = {
 #   "awesome" = {
 #     source = ./configs/awesome;
 #     target = "./.config/awesome";
 #   };
 # };

}
