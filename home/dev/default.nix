# ---
# Module: Development Switchboard
# Description: Aggregated language toolchains for NixOS-WSL
# Scope: Home Manager
# ---

{ ... }: {
  imports = [
    ./python.nix
    ./node.nix
    ./go.nix
    ./rust.nix
    ./cpp.nix
    ./java.nix
  ];
}
