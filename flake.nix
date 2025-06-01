{
  description = "shinzui's flake templates";

  outputs = { ... }: {
    templates = {
      haskell = {
        path = ./haskell;
        description = "A template for haskell development";
      };
      haskell-9_10 = {
        path = ./haskell-9_10;
        description = "A template for haskell development with GHC 9.10";
      };
      haskell-9_12 = {
        path = ./haskell-9_12;
        description = "A template for haskell development with GHC 9.12";
      };
      haskell-hub = {
        path = ./haskell-hub;
        description = "A template for haskell development in random open source projects";
      };
      node = {
        path = ./nodejs;
        description = "A template for nodejs development";
      };
    };
  };
}
