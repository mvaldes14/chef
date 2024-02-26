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
        buildInputs = [ self.packages.${system}.default ];
      };

      packages.${system}.default = pkgs.stdenv.mkDerivation {
        name = "cinc";
        src = cinc;
        # buildInputs = [ cinc.packages.${system}.cinc-workstation ];
        installPhase = ''
          mkdir -p $out/bin
          cp -r ${cinc.packages.${system}.cinc-workstation}/bin/* $out/bin
        '';
      };
    };
}
