{ lib, pkgs, ... }@args :
let
  moduleDir = ./.;
  filesToImport = builtins.readDir moduleDir;
  importFile = name: type:
    if type == "regular" && lib.hasSuffix ".nix" name && name != "default.nix" && name != "system-packages.nix" then
      import (moduleDir + "/${name}") args
    else
      null;
  importedModules =  lib.filter(x: x != null) (lib.mapAttrsToList importFile filesToImport);
in {
  imports = importedModules;
}
