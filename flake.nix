# flake.nix skeleton:
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }: {
  packages."x86_64-darwin".default = let
      pkgs = nixpkgs.legacyPackages."x86_64-darwin";
	in pkgs.buildEnv {
      name = "home-packages";
      paths = with pkgs; [

        # general tools
        git
        fzf
        tmux
        zoxide
        eza
        fd
        ripgrep
        neovim
        bat
        kubectl
        kubectx
      ];
    };
  };
}