{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  # env.GREET = "devenv";


  # https://devenv.sh/packages/
  # packages = [ pkgs.git ];

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo Entering Portfolio Enviroment";

  enterShell = ''
    hello
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    npx astro check
  '';

  languages.javascript = {
      enable = true;
      npm = {
          enable = true;
          install.enable = true;
        };
    };

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;
  pre-commit.hooks.prettier.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
