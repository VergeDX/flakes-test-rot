{ inputs, ... }: with inputs;
{
  home.username = "vanilla";
  home.homeDirectory = "/home/vanilla";

  imports = [ impermanence.nixosModules.home-manager.impermanence ]
    ++ [ ./impermanence.nix ];

  home.stateVersion = "21.11";
}
