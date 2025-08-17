{ username, system, inputs, ...}:
let
  home-manager = inputs.home-manager;
  system = "x86_64-linux";
  username = "nicourrrn";
in
{
  imports = [
    home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users.${username} = import ./${username}.nix;
      home-manager.extraSpecialArgs = {
        flake-packages = inputs;
        inherit system;
      };
    }
  ];
}
