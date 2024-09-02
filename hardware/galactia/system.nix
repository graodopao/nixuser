{ ... }:
{
	lawModules = [
	];

	system = {
		imports = [ ./generated.nix ];

		boot.loader.systemd-boot.enable = true;
		boot.loader.efi.canTouchEfiVariables = true;

		hostname = "galactia";

		services.xserver.xrandrHeads = [
			{
				output = "DP-2";
				primary = true;
			}
			{
				monitorConfig = ''Option "RightOf" "DP-2"'';
				output = "HDMI-1";
			}
		];
	};
}