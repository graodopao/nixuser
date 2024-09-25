{ ... }:
{
	lawModules = [
		/core/nvidia
	];

	system = {
		imports = [ ./generated.nix ];

		boot.loader.systemd-boot.enable = true;
		boot.loader.efi.canTouchEfiVariables = true;

		hostname = "milkyway";
	};
}
