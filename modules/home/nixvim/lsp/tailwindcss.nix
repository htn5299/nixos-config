{
  enable = true;
  settings = {
    filetypes = [
      "html"
      "css"
      "scss"
      "javascript"
      "javascriptreact"
      "typescript"
      "typescriptreact"
      "svelte"
    ];
    tailwindCSS = {
      classAttributes = [
        "class"
        "className"
        "class:list"
        "classList"
        "ngClass"
      ];
      lint = {
        cssConflict = "warning";
        invalidApply = "error";
        invalidConfigPath = "error";
        invalidScreen = "error";
        invalidTailwindDirective = "error";
        invalidVariant = "error";
        recommendedVariantOrder = "warning";
      };
      validate = true;
      experimental = {
        classRegex = [
          "cva\\(([^)]*)\\)"
          # ''"([^"]*)"''
          # "[^A-Z]+[A-Z]*\\)"
          # "cx\\(([^)]*)\\)"
          # ''(?:["'`]([^"'`]*)(?:["'`]))''
        ];
      };
    };
  };
}
