# nix/modules/darwin.nix — auto-generated from bevy_transform.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_transform; in {
  options.services.bevy_transform = {
    enable = lib.mkEnableOption "bevy_transform";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_transform or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
