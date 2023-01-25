{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  pwd = builtins.toString ./.;
in
{
  source-code = stdenv.mkDerivation {
    name = "sabredav-ld";
    src = ./.;
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir $out
      cp $src/index.php $out/
    '';
  };
}
