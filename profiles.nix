# ---
# Module: Profile Parameters
# Description: Single source of truth for user identity and optional heavy feature toggles
# Scope: Flake
# ---

{
  username = "nixos";
  hostName = "nixos-wsl";
  timeZone = "Asia/Shanghai";

  gitName = "NixOS User";
  gitEmail = "user@example.com";

  # 按需开启重型功能：默认关闭以保持基础 WSL 镜像精简
  enableDocker = false;
  enableCudaDriver = false;
}
