{
  description = "Cinc Workstation";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    cinc.url = "github:kristofvandam/flake-cinc-workstation";
  };

  outputs = { self, nixpkgs, cinc }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [ cinc.packages.${system}.cinc-workstation-run ];
        shellHook = ''
          ktichen list
        '';
      };
    };
}

