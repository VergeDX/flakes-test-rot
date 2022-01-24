{ pkgs, ... }:
{
  users.mutableUsers = false;
  users.users.root.initialPassword = "hunter2";
  users.defaultUserShell = pkgs.fish;
}
