{
  enable = true;
  settings = {
    formatting.command = [ "nixpkgs-fmt" ];
    nixpkgs.expr = "import <nixpkgs> {}";
  };
}
