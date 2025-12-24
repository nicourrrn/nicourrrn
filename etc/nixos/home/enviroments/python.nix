{ pkgs, ... }: {
  packages = with pkgs; [
    python314FreeThreading
    sqlite
  ];

  enterShell = ''
    echo "Hello from python env"
  '';
}
