# ---
# Module: Flake Entry
# Description: Standalone NixOS-WSL starter flake with Home Manager integration
# Scope: Flake
# ---

{
  description = "Minimal, modular NixOS-WSL development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nixos-wsl = {
      url = "github:nix-community/NixOS-WSL/main";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixos-wsl, home-manager, ... }:
    let
      system = "x86_64-linux";
      profile = import ./profiles.nix;
    in
    {
      nixosConfigurations.wsl = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit profile; };
        modules = [
          nixos-wsl.nixosModules.default
          home-manager.nixosModules.home-manager
          ./system
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit profile; };
              users.${profile.username} = import ./home;
            };
          }
        ];
      };
    };
}
