{ ... }:
{
  # programs.zsh.enable = true;
  programs.git = {
    enable = true;
    userName = "nicourrrn";
    userEmail = "s57111702@gmail.com";
  };
  programs.fish = {
    enable = true;

  };
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = true;
    };
  };
}
