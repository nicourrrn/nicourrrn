{ pkgs, flake-packages, lib, ... }@args:
let
  packageDir = ./.;
  filesToImport = builtins.readDir packageDir;
  importFile = name: type:
    if type == "regular" && lib.hasSuffix ".nix" name && name != "default.nix" then
      import (packageDir + "/${name}") (args // {inherit pkgs; inherit flake-packages;})
    else
      null;
in
  lib.flatten (lib.filter (x: x != null) (lib.mapAttrsToList importFile filesToImport))
