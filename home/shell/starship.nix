# ---
# Module: Starship Prompt
# Description: Minimal, fast cross-shell prompt with language and git status indicators
# Scope: Home Manager
# ---

{ ... }: {
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    settings = {
      add_newline = false;
      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };
      directory = {
        truncation_length = 4;
        truncate_to_repo = true;
      };
    };
  };
}
