{
  config,
  lib,
  pkgs,
  ...
}: {
  services.flatpak.enable = true;

  #xdg.portal = {
  #	enable = true;
  #	extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  #	config = {
  #		common = {
  #			default = [
  #				"gtk"
  #			];
  #		};
  #	};
  #};
}
