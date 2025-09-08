{ pkgs, ... }:
{
  projectRootFile = "flake.nix";

  programs.biome = {
    enable = true;
    package = pkgs.biome;
  };

  programs.nixpkgs-fmt.enable = true;
}
