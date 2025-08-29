{
  inputs = {
    canonicalization.url = "github:pbizopoulos/canonicalization";
    nixpkgs.follows = "canonicalization/nixpkgs";
  };
  outputs =
    inputs:
    inputs.canonicalization.blueprint { inherit inputs; }
    // {
      formatter.x86_64-linux = inputs.canonicalization.formatter.x86_64-linux;
      templates.default = {
        description = "";
        path = ./.;
      };
    };
}
