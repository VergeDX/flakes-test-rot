{
  inputs = {
    nixos.url = "github:nixos/nixpkgs/nixos-21.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { ... }@inputs: inputs.flake-utils.lib.eachDefaultSystem (system: {
    packages.nixosConfigurations."NixOS-RoT" = inputs.nixos.lib.nixosSystem {
      inherit system;
      modules = [ ./configuration.nix ];
    };
  });
}
