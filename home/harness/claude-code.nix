# ---
# Module: Claude Code Harness
# Description: Anthropic Claude Code CLI agent tracked from nixpkgs
# Scope: Home Manager
# ---

{ pkgs, ... }: {
  home.packages = [
    pkgs.claude-code
  ];
}
