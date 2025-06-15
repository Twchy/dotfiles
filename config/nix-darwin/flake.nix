{
  description = "Twchy's nix-darwin configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew }:
  let
    configuration = { pkgs, config, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages =
        [ 
          pkgs.neovim
        ];

      homebrew = {
        enable = true;
        casks = [
          "font-jetbrains-mono-nerd-font"
          "ghostty"
          "discord"
          "firefox"
          "spotify"
          "thunderbird"
          "steam"
          "rectangle"
          "vlc"
          "rancher"
          "cursor"
          "google-chrome"
          "IINA"
        ];
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
	  "cloudflared"
	  "helm"
	  "imagemagick"
	  "lazydocker"
        ];
        taps = [

        ];
        masApps = {

        };
        onActivation = {
          upgrade = true;
          autoUpdate = true;
          cleanup = "uninstall";
        };
      };

      fonts.packages = [
        pkgs.nerd-fonts.terminess-ttf
      ];

      nixpkgs.config.allowUnfree = true;
      nix.settings.experimental-features = "nix-command flakes";
      programs.zsh = {
        enable = true;  # default shell on catalina
        enableSyntaxHighlighting = true;
      };
      system.configurationRevision = self.rev or self.dirtyRev or null;
      system.stateVersion = 6;
      nixpkgs.hostPlatform = "aarch64-darwin";
      security.pam.services.sudo_local.touchIdAuth = true;

      users.users.tw.home = "/Users/tw";
      # nix.configureBuildUser = true;
      # ids.uids.nixbld = 350;

      system.activationScripts.applications.text = let
        env = pkgs.buildEnv {
          name = "system-applications";
          paths = config.environment.systemPackages;
          pathsToLink = "/Applications";
        };
      in
        pkgs.lib.mkForce ''
          # Set up applications.
          echo "setting up /Applications..." >&2
          rm -rf /Applications/Nix\ Apps
          mkdir -p /Applications/Nix\ Apps
          find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
          while read -r src; do
            app_name=$(basename "$src")
            echo "copying $src" >&2
            ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
          done
        '';

      system.defaults = {
        dock.autohide = false;
        dock.mru-spaces = false;
        NSGlobalDomain._HIHideMenuBar = false;
        finder.AppleShowAllExtensions = true;
        screencapture.location = "~/Pictures/Screenshots";
        NSGlobalDomain.AppleICUForce24HourTime = true;
        NSGlobalDomain.AppleInterfaceStyle = "Dark";
        NSGlobalDomain.KeyRepeat = 2;
      };
	system.primaryUser = "tw";     
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#Maximus
    darwinConfigurations."Maximus" = nix-darwin.lib.darwinSystem {
      modules = [ 
          configuration
          nix-homebrew.darwinModules.nix-homebrew
          {
            nix-homebrew = {
              enable = true;
              enableRosetta = true;
              user = "tw";

              autoMigrate = true;
            };
          }
        ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."Maximus".pkgs;
  };
}
