{ pkgs, ... }:
{
  users.mutableUsers = false;
  # users.users.root.initialPassword = "hunter2";
  users.defaultUserShell = pkgs.fish;

  users.users."vanilla" = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  } // {
    hashedPassword = "$6$rootfs/on/tmpfs" +
      "$ZdJgQnzRONBdzI0TKoRaXVf5jgvWZMfZL4faLLc1ACMtHuTTzEogZhyBLKB6MsWztkSC6FHygH"
      + ".6O/o37Pd1p0";
  };
}
