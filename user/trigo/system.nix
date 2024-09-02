{ ... }:
{
	lawModules = [
		/audio/jack-pipewire
		/network/anonymous
	];

	systemUsers = [ "trigo" ];

	system = {
		hardware = {
			bluetooth.enable = true;
			bluetooth.powerOnBoot = true;
		};

		services.displayManager.sddm.enable = true;
		
		services.xserver = {
			xkb.layout  = "br,us";
			xkb.options = "grp:alt_caps_toggle";
		};
		
		time.timeZone = "America/Sao_Paulo";
	};
}
