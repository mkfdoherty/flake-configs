# flake.nix skeleton:
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }: {
    packages."aarch64-darwin".default = let
      pkgs = nixpkgs.legacyPackages."aarch64-darwin";
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
        kubectx
        awscli2
        eksctl
        ko
        gh
        jq
        kubernetes-helm
        starship
        zsh-syntax-highlighting
        fastfetch
      ];
    };
  };

}