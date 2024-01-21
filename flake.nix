{
  description = "Stix: STan's nIX config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    #vscode-server.url = "github:msteen/nixos-vscode-server";
    #stixoverlay.url = "github:stoek/stixoverlay";
    #cme.url = "github:Porchetta-Industries/CrackMapExec";
  };
  
  outputs = inputs@{ nixpkgs, home-manager, ... }: let
    # Overlays is the list of overlays we want to apply from flake inputs.
    overlays = [
      #inputs.stixoverlay.overlay
      #inputs.cme.overlay
    ];
    in {
    nixosConfigurations = {
      inherit overlays;
      nox = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
        { nixpkgs.overlays = overlays; }
          ./nixos.nix
        #  vscode-server.nixosModule
         # ({ config, pkgs, ... }: {
         #   services.vscode-server.enable = true;
         # })
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.stan = import ./home.nix;

            # Optionally, use home-manager.extraSpecialArgs to pass
            # arguments to home.nix
          }
        ];
      };
    };
  };
}
