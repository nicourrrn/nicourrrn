{ pkgs, ... }:
{
  networking.hostName = "nixos";
  # networking.networkmanager.enable = true;
  networking.wireless.iwd = {
    enable = true;
    settings = {
      General = {
        EnableNetworkConfiguration = true;
      };
      Network = {
        EnableIPv6 = true;
      };
      Scan = {
        DisablePeriodicScan = true;
      };
    };
  };
  environment.systemPackages = with pkgs; [
    # wigtk
    impala
  ];
  services.avahi.enable = true;
}
