# ---
# Module: Home Switchboard
# Description: Unified entry point for Home Manager user modules in NixOS-WSL
# Scope: Home Manager
# ---

{ profile, ... }: {
  imports = [
    ./shell
    ./cli
    ./dev
    ./harness
    ./editor
  ];

  home = {
    username = profile.username;
    homeDirectory = "/home/${profile.username}";
    stateVersion = "24.11";
  };

  programs.home-manager.enable = true;
}
