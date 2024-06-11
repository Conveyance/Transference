{ stdenv
, mdbook
, version ? "0.0.0"
}:
stdenv.mkDerivation {
  pname = "transference-user-docs";
  inherit version;
  src = ../../docs;
  nativeBuildInputs = [ mdbook ];
  buildPhase = "mdbook build . --dest-dir $out";
}