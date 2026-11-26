# ---
# Module: Git Configuration
# Description: Parameterized Git identity and sensible workflow defaults
# Scope: Home Manager
# ---

{ profile, ... }: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = profile.gitName;
        email = profile.gitEmail;
      };
      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;
      core.autocrlf = "input";
    };
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
  };
}
