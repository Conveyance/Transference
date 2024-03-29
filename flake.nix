{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
  outputs = inputs: with inputs; let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
    };
  in {
    packages.x86_64-linux = rec {
      default = package;
      package = pkgs.callPackage ./nix/package.nix {};
    };
    devShells.x86_64-linux.default = import ./nix/shell.nix {inherit pkgs;};
  };
}
