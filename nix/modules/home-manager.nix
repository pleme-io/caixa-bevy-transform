# nix/modules/home-manager.nix — auto-generated from bevy_transform.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_transform; in {
  options.programs.bevy_transform = {
    enable = lib.mkEnableOption "bevy_transform";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_transform or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
