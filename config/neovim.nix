{pkgs, ...} : {

    # enable        = true;

    viAlias       = true;
    vimAlias      = true;

    performance = {
      combinePlugins = {
        enable = true;
        standalonePlugins = [];
      };
      byteCompileLua.enable = false;
    };

    files = {};

    extraPackages = [
      pkgs.terraform-ls
      pkgs.nodePackages.eslint
      pkgs.lua-language-server
      pkgs.nerdfonts
      pkgs.texliveFull
      pkgs.zathura
      pkgs.lua-language-server
    ];
}
