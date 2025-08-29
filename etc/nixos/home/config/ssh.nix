{ ... }:
{
  services.ssh-agent.enable = true;
  programs.ssh = {
    enable = true;
    matchBlocks."*".addKeysToAgent = "yes";
    enableDefaultConfig = false;
    extraConfig = ''
      Host github.com
        Hostname github.com
        User git
        IdentityFile ~/.ssh/github
    '';
  };
}
