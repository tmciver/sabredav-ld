{ pkgs ? import <nixpkgs> {} }:

with pkgs;
stdenv.mkDerivation {
  name = "sabredav-ld";
  src = ./.;
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir $out
    cp $src/index.php $out
  '';
}
