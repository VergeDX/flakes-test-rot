{
  inputs = {
    nixos.url = "github:nixos/nixpkgs/nixos-21.11";
    flake-utils.url = "github:numtide/flake-utils";

    home-manager.url = "github:nix-community/home-manager/release-21.11";
    nixos-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.inputs.nixpkgs.follows = "nixos-unstable";
  };

  outputs = { ... }@inputs: inputs.flake-utils.lib.eachDefaultSystem (system: {
    packages.nixosConfigurations."NixOS-RoT" = inputs.nixos.lib.nixosSystem {
      inherit system;
      modules = with inputs; [ ./configuration.nix ] ++
        [ home-manager.nixosModules.home-manager ] ++
        [{ home-manager.users."vanilla" = import ./home.nix; }];
    };
  });
}
