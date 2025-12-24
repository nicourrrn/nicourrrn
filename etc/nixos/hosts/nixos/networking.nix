{ pkgs, ... }:
{
  networking.hostName = "nixos";
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
        DisablePeriodicScan = false;
      };
    };
  };
  environment.systemPackages = with pkgs; [
    # wigtk
    impala
  ];
  services.avahi.enable = true;
}
