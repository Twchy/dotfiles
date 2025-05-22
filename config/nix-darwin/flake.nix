{
  description = "nix-darwin + nix-homebrew setup for Maximus";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";

    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, nix-darwin, nix-homebrew, ... }: 
  let
    configuration = { config, pkgs, ... }: {
      # Required for nix-darwin without conflicting with Determinate Nix
      nix.enable = false;

      nixpkgs.config.allowUnfree = true;
      nixpkgs.hostPlatform = "aarch64-darwin";

      system.stateVersion = 4;

      programs.zsh.enable = true;

      users.users.tw.home = "/Users/tw";

      environment.systemPackages = with pkgs; [
        neovim
      ];

      homebrew = {
        enable = true;
        brews = [
          "ansible"
          "talosctl"
          "tree"
          "kubectl"
          "k9s"
          "fastfetch"
          "python@3.10"
          "python-tk@3.11"
          "python@3.12"
          "starship"
          "nvm"
          "btop"
          "tmux"
          "lazygit"
          "tcl-tk"
          "jpeg-turbo"
          "rust"
        ];
        casks = [
          "font-jetbrains-mono-nerd-font"
          "ghostty"
          "firefox"
          "discord"
          "spotify"
          "thunderbird"
          "steam"
          "rectangle"
          "mullvadvpn"
          "vlc"
          "orbstack"
	  "cursor"
        ];
        taps = [
        ];
        onActivation = {
          upgrade = true;
          autoUpdate = true;
          cleanup = "uninstall";
        };
      };

      security.pam.services.sudo_local = {
        touchIdAuth = true;
      };

      nix-homebrew = {
        enable = true;
        enableRosetta = true;
        user = "tw";
        autoMigrate = true;
      };
    system.defaults = {
        dock.autohide = false;
        NSGlobalDomain._HIHideMenuBar = false;
        dock.mru-spaces = false;
        finder.AppleShowAllExtensions = true;
        screencapture.location = "~/Pictures/Screenshots";
        NSGlobalDomain.AppleICUForce24HourTime = true;
        NSGlobalDomain.AppleInterfaceStyle = "Dark";
        NSGlobalDomain.KeyRepeat = 2;
      };

      system.activationScripts.postUserActivation.text = ''
        defaults write com.apple.finder FXPreferredGroupBy -string "Kind"
      '';
    };
  in {
    darwinConfigurations."Maximus" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        nix-homebrew.darwinModules.nix-homebrew
      ];
    };

    darwinPackages = self.darwinConfigurations."Maximus".pkgs;
  };
}

