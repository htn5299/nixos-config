{
  # Typescript
  enable = true;
  settings = {
    complete_function_calls = true;
    vtsls = {
      enableMoveToFileCodeAction = true;
      autoUseWorkspaceTsdk = true;
      experimental = {
        # maxInlayHintLength = 30;
        completion = {
          enableServerSideFuzzyMatch = true;
        };
      };
    };
    typescript = {
      preferences = {
        importModuleSpecifier = "non-relative";
      };
      updateImportsOnFileMove = {
        enabled = "always";
      };
      suggest = {
        completeFunctionCalls = true;
      };
    };
  };
}
