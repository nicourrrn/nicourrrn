{ ... }:
{
  services.ssh-agent.enable = true;
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
    extraConfig = ''
      Host github.com
        Hostname github.com
        User git
        IdentityFile ~/.ssh/github
    '';
  };
}
