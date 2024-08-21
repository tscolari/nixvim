_ : {
  # Import all your configuration modules here
  imports = [
    ./globals.nix
    ./neovim.nix
    ./utils.nix
    ./plugins.nix
    ./plugins/default.nix
    ./bufferline.nix
    ./paste.nix
    ./keyboard.nix
    ./settings.nix
    ./spelling.nix
    ./languages.nix
  ];
}
