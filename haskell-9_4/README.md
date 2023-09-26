### Add to registry

```
nix registry add shinzui-templates github:shinzui/nix-flake-templates
```

### Init haskell project using template

```
nix flake init -t shinzui-templates#haskell
```

### Update flake lock from haskell tempalte

```
nix flake update --inputs-from "github:shinzui/nix-flake-templates?dir=haskell"
```
