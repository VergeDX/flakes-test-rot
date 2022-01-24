{
  inputs = {
    nixos.url = "github:nixos/nixpkgs/nixos-21.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixos, flake-utils, ... }: flake-utils.lib.eachDefaultSystem (system: {
    packages.nixosConfigurations."NixOS-RoT" = nixos.lib.nixosSystem {
      inherit system;
      modules = [ ./configuration.nix ];
    };
  });
}
