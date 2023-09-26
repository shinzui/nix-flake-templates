### Add to registry

```
nix registry add shinzui-templates github:shinzui/nix-flake-templates
```

### Init haskell project using template

```
nix flake init -t shinzui-templates#haskell-9_4
```

### Update flake lock from haskell templates

```
nix flake update --inputs-from "github:shinzui/nix-flake-templates?dir=haskell-9_4"
```
