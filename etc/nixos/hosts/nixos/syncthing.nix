{...} : {
  services.syncthing = {
    enable = true;
    dataDir = "/home/nicourrrn/Sync";
    openDefaultPorts = true;
    user = "nicourrrn";
    group = "users";
  };
}
