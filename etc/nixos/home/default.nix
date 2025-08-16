{ home-manager, username, userSystem, inputs, ...}:
{
    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;
    home-manager.users.${username} = import ./${username}.nix;
    home-manager.extraSpecialArgs = {
      thorium = inputs.thorium;
      zen-browser = inputs.zen-browser;
      system = userSystem;
    };
}
