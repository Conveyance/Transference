{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  # Get dependencies from the main package
  inputsFrom = [(pkgs.callPackage ./package.nix {})];
  RUST_SRC_PATH = "${pkgs.rustPlatform.rustLibSrc}";
  # Additional tooling
  # LD_LIBRARY_PATH = "${pkgs.lib.makeLibraryPath runtimeLibs}";
  LIBCLANG_PATH="${pkgs.llvmPackages.libclang.lib}/lib";
  buildInputs = with pkgs; [
    cargo
    cargo-watch
    rustc
    rustup
    clippy
    rust-analyzer
    pkg-config
    bacon
    # clang
    # openssl
    # nodePackages_latest.pnpm
  ];
  # nativeBuildInputs = with pkgs; [
  #   pkgconfig
  #   rustPlatform.bindgenHook
  # ];
}