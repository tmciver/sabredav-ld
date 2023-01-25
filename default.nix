{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  pwd = builtins.toString ./.;
in
{
  source-code = stdenv.mkDerivation {
    name = "sabredav-ld";
    src = /home/tim/workspace/linkeddata/sabredav-ld;
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir $out
      cp $src/index.php $out/
    '';
  };
}
