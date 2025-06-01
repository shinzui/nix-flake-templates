# Nix Flake Templates

A collection of development environment templates using Nix flakes.

## Available Templates

- **haskell** - Haskell development with GHC 9.8.4
- **haskell-9_10** - Haskell development with GHC 9.10
- **haskell-9_12** - Haskell development with GHC 9.12
- **haskell-hub** - Haskell development for open source projects
- **bun** - Bun development environment
- **node** - Node.js development environment

## Usage

### Add to registry

```bash
nix registry add shinzui-templates github:shinzui/nix-flake-templates
```

### Initialize a project using a template

```bash
nix flake init -t shinzui-templates#<template-name>
```

Examples:
```bash
nix flake init -t shinzui-templates#haskell
nix flake init -t shinzui-templates#bun
nix flake init -t shinzui-templates#node
```

### Update flake lock from template

```bash
nix flake update --inputs-from "github:shinzui/nix-flake-templates?dir=<template-name>"
```

Example:
```bash
nix flake update --inputs-from "github:shinzui/nix-flake-templates?dir=haskell"
```