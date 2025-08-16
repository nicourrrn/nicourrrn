{ pkgs, ... }:
{
  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
      daemon.settings.features.cdi = true;
    };
  };
  users.extraGroups.docker.members = [ "nicourrrn" ];
  environment.systemPackages = with pkgs; [
    nvidia-docker
    nerdctl

    # firecracker
    # firectl
    # flintlock

    distrobox
    qemu
    lima

    # podman-compose
    # podman-tui

    docker-compose
    # lazydocker
    # docker-credential-helpers
  ];
}
