{ pkgs, ... }:
{
  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host github.com
        Hostname github.com
        User git
        IdentifyFile ~/.ssh/github
        IdentifyOnly yes
    '';
  };
}
