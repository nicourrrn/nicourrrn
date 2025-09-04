{
  description = "Nicourrrn base flake configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    thorium = {
      url = "github:Rishabh5321/thorium_flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nil-lsp = {
      url = "github:oxalica/nil";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
  };

  outputs =
    { self, nixpkgs, ... }@inputs:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/nixos/configuration.nix
          ./hosts/nixos/hardware-configuration.nix
          ./hosts/nixos/bootloader.nix
          ./hosts/nixos/audio.nix
          ./hosts/nixos/bluethooth.nix
          ./hosts/nixos/console.nix
          ./hosts/nixos/fonts.nix
          ./hosts/nixos/i18n.nix
          ./hosts/nixos/networking.nix
          ./hosts/nixos/nix-config.nix
          ./hosts/nixos/time.nix
          ./hosts/nixos/virtualisaton.nix
          ./hosts/nixos/services.nix
          ./hosts/nixos/fingerprint.nix
          ./hosts/nixos/nvidia.nix
          ./hosts/nixos/nix-ld.nix
          ./home
        ];
      };
    };
}
