{
  inputs.nixos.url = "github:nixos/nixpkgs/nixos-21.11";
  outputs = { nixos, ... }: {
    nixosConfigurations."NixOS-RoT" = nixos.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}
