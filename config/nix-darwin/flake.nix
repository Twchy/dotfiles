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
          "python@3.11"
          "python@3.12"
          "python@3.13"
          "starship"
          "nvm"
          "btop"
          "tmux"
        ];
        casks = [
          "ghostty"
          "firefox"
          "discord"
          "spotify"
          "thunderbird"
          "steam"
          "rectangle"
          "mullvadvpn"
          "vlc"
          "cursor"
          "orbstack"
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

