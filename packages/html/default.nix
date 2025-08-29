{
  pkgs ? import <nixpkgs> { },
}:
pkgs.writeShellApplication {
  name = "html";
  runtimeInputs = [ pkgs.nodePackages.http-server ];
  text = ''set +u && [ -z "$DEBUG" ] && http-server ${./.}'';
}
