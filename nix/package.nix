{rustPlatform,
 lib,
#  fontconfig,
#  cmake,
#  pkg-config,
#  llvmPackages,
#  clang,
#  openssl,
#  makeWrapper
 }:

rustPlatform.buildRustPackage rec {
  pname = "transference";
  version = "0.0.1";
  cargoLock.lockFile = ../Cargo.lock;
  # cargoHash = "";
  src = lib.cleanSource ../.;
  cargoBuildCommand = "cargo build --release --package ${pname}";
  # nativeBuildInputs = [
  #   cmake
  #   pkg-config
  #   rustPlatform.bindgenHook
  # ];
  CARGO_INCREMENTAL = "0";
  RUST_BACKTRACE=1;
  # LIBCLANG_PATH="${llvmPackages.libclang.lib}/lib";

  # buildInputs = [
  #   fontconfig
  #   clang
  #   # openssl
  # ];

  #  doCheck = false;
}
