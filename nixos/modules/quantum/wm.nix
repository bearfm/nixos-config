{ config, lib, pkgs, ... }:

let
  tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
in {	
		services.xserver = {
				enable = true;
		};

		#environment.systemPackages = with pkgs; [
		#	wayfire-with-plugins
		#	dunst
		#	libsForQt5.breeze-qt5
		#	libsForQt5.breeze-gtk
		#	waybar
		#	pavucontrol
		#	nwg-launchers
		#	grim
		#	slurp
		#];

		#services.greetd = {
		#	enable = true;
		#	settings = {
		#		default_session = {
		#			command = "${tuigreet} --time --remember --remember-session --cmd wayfire";
		#			user = "bear";
		#		};
		#	};
		#};

		#services.seatd = {
		#	enable = true;
		#	group = "users";
		#	user = "bear";
		#};

		services.displayManager.sddm = {
			enable = true;
			wayland = {
				enable = true;
			};
		};

		services.desktopManager = {
			plasma6.enable = true;
		};

		environment.plasma6.excludePackages = with pkgs.kdePackages; [
			konsole
		];

		systemd.targets.sleep.enable = false;
		systemd.targets.suspend.enable = false;
		systemd.targets.hibernate.enable = false;
		systemd.targets.hybrid-sleep.enable = false;

		programs.dconf.enable = true;
		security.polkit.enable = true;
}
