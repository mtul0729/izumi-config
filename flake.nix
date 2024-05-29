{
  description = "Izumi's nixos flake";

  inputs = {
    #nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    # home-manager, used for managing user configuration
    home-manager = {
      # url = "github:nix-community/home-manager/release-23.11";
      url = "github:nix-community/home-manager/master";

      # The `follows` keyword in inputs is used for inheritance.
      # Here, `inputs.nixpkgs` of home-manager is kept consistent with the `inputs.nixpkgs` of the current flake,
      # to avoid problems caused by different versions of nixpkgs dependencies.
      inputs.nixpkgs.follows = "nixpkgs";
    };

    helix.url = "github:helix-editor/helix/master";
    daeuniverse.url = "github:daeuniverse/flake.nix";
    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
  };
  nixConfig = {
    # substituers will be appended to the default substituters when fetching packages
  };

  outputs =
    inputs@{ self
    , nixpkgs
    , home-manager
    , nix-vscode-extensions
    , ...
    }: {
      nixosConfigurations.izumi-nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          { _module.args = { inherit inputs; }; }
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.izumi = import ./home;
            home-manager.extraSpecialArgs = inputs;
            # Optionally, use home-manager.extraSpecialArgs to pass
            # arguments to home.nix
          }
          # inputs.daeuniverse.nixosModules.dae
          # inputs.daeuniverse.nixosModules.daed
        ];

      };


    };
}
