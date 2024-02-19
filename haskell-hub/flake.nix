{
  description = "Haskell nix template";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        frameworks = pkgs.darwin.apple_sdk.frameworks;
      in
      {
        devShell = nixpkgs.legacyPackages.${system}.mkShell {
          buildInputs = [
            frameworks.Cocoa
          ];
          nativeBuildInputs = [
            pkgs.zlib
            pkgs.xz
            pkgs.just
            pkgs.cabal-install
            pkgs.ghc
            pkgs.haskell-language-server
          ];
        };
      }
    );
}
