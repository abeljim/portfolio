# Abel Jimenez Portfolio 

## Setup Environment 
### Simple Instructions
1. git clone https://github.com/abeljim/portfolio.git 
2. devenv shell
3. Done!

### Complete Instructions 
1. This was tested on ubuntu 22.04.
2. Install Nix Package Manager `curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install`
3. Setup nixpkgs unstable: 
`nix-channel --add https://nixos.org/channels/nixpkgs-unstable`
`nix-channel --update`
4. Setup devenv `nix-env -iA nixpkgs.devenv`
5. Enter Environment with: `devenv shell`
6. Optional: Setup direnv for automatic loading of environment. [Instructions](https://direnv.net/docs/installation.html)

## Commands

All commands are run from the root of the project, from a terminal:

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Installs dependencies                            |
| `npm run dev`             | Starts local dev server at `localhost:4321`      |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |
| `npm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help` | Get help using the Astro CLI                     |

## Developer Tools
### Vscode Configuration 
1. Install Astro Extension (Do not install Prettier or Eslint Extension)
2. Done! Read to start programming. 

### Neovim Configuration 
Neovim is my text editor of choice. I use the Lazyvim distribution.
1. Setup Lazyvim [Instructions](https://www.lazyvim.org/installation)
2. Install Treesitter Parsers: Run the following NVIM commands. 
```
:TSUpdate
:TSInstall astro
:TSInstall css
:TSInstall typescript
:TSInstall tsx
```
3. Install Treesitter Grammar: Create the file `~/.config/nvim/lua/plugins/astro.lua`.
```
return {
  { "virchau13/tree-sitter-astro" },
}
```
4. Setup LSP Config: Add the following to `~/.config/nvim/init.lua` .
```
require 'lspconfig'.astro.setup {
  cmd = { "npx", "astro-ls", "--stdio"},
}
```
This will use the astro-ls that is bundled with npm. 
