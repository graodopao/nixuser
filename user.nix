{ pkgs, law, ... }:
{
	username = "trigo";
	name = "Grão";
	shell = pkgs.fish;

	lawModules = [
		/network/nordvpn
		/network/zerotier
	
		/core/fonts
		/core/gnupg

		/programming/godot
		/programming/basic

		(law.overrideModule /games/steam { sandbox.disable = true; })
		/games/atlauncher
	];

	allowedUnfree = ["jetbrains-toolbox" "discord" ];

	packages = with pkgs; [
		bottles

		obs-studio
		jetbrains-toolbox
 		flameshot
		brave
		
		rofi
		
		oh-my-fish
		fish
		
		discord
		yakuake

		mpv
		
		kitty
		tldr
	];

	programs.vscode.enable = true;

	system.imports	= [ ./config/desktop/plasma/system.nix ];

	home = { config, ... }: {
		imports = [ ./config/desktop/plasma/home.nix ];

		programs.zoxide = { enable = true; enableFishIntegration = true; } ;
		programs.fish = { enable = true; interactiveShellInit = "zoxide init fish | source; alias cd=z"; };
		
		services.unclutter = {
			enable = true;
			timeout = 2;
		};
	};
}
