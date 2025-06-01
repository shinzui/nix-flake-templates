{ pkgs, ... }:
{
  projectRootFile = "flake.nix";
  programs.biome.enable = true;
  programs.nixpkgs-fmt.enable = true;
}
