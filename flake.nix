{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
  outputs = inputs: with inputs; let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
    };
    cargoData = builtins.fromTOML (builtins.readFile ./Cargo.toml);
  in {
    packages.x86_64-linux = rec {
      default = package;
      package = pkgs.callPackage ./nix/packages/transference.nix {};
      user-docs = pkgs.callPackage ./nix/packages/user-docs.nix {version = cargoData.package.version;};
    };
    devShells.x86_64-linux.default = import ./nix/shell.nix {inherit pkgs;};
  };
}
