{pkgs, ...} : {
    plugins = {
      #filetype.enable           = true; # Drop in replacement for filetype.vim
      # plenary.enable            = true;
      notify.enable        = true;
      tmux-navigator.enable = true;
      # nvim-web-devicons.enable  = true;
      lualine.enable            = true;
      # popup.enable              = true;
      #mini.enable               = true;
      vim-bbye.enable           = true;

      telescope = {
        enable = true;
        extensions = {
          fzf-native.enable   = true;
          file-browser.enable = true;
        };
      };

      fzf-lua = {
        enable = true;
        iconsEnabled = true;
      };

      lsp.enable = true;
      lspsaga = {
        enable = true;
        codeAction = {
          keys.quit = "<ESC>";
        };

        finder = {
          keys = {
            toggleOrOpen = "e";
            vsplit = "v";
            split = "s";
            quit = "q";
          };
        };
      };
      lsp-format.enable = true;
      trouble.enable = true;
      lspkind.enable = true;
      lsp-status.enable = true;

      cmp.enable = true;

      treesitter.enable = true;
      #treesitter-textobjects.enable = true;
      rainbow-delimiters.enable = true;
      ts-autotag.enable = true;
      ts-context-commentstring.enable = true;
      nvim-autopairs.enable = true;
      endwise.enable = true;

      which-key.enable = true;

      #mkdir
      #vgit
      #go.nvim

      alpha = {
        enable = true;
        theme = "dashboard";
      };

      nvim-snippets.enable = true;
      friendly-snippets.enable = true;
      comment.enable = true;
      nvim-bqf.enable = true;

      #lir.nvim

      spectre.enable = true;
      neoscroll.enable = true;
      diffview.enable = true;

      dap.enable = true;
      dap.extensions.dap-go.enable = true;
      dap.extensions.dap-ui.enable = true;
      dap.extensions.dap-virtual-text.enable = true;
      # telescope-dap

      neotest.enable = true;
      #neotest-jest
      #neotest-golang
      #neotest-vim-test
      #neotest/nvim-nio
      #vim-test

      undotree.enable = true;

      #sk1418/Join

      fugitive.enable = true;
      sleuth.enable = true;
      surround.enable = true;
    };

    colorschemes = {
      gruvbox.enable = true;
      onedark.enable = false;
      base16.enable = false;
    };

    extraPlugins = with pkgs.vimPlugins; [
      nvim-web-devicons
      neon
      plenary-nvim
      neotest-go
      splitjoin-vim
      vim-trailing-whitespace
      vim-easy-align
      vim-fetch
      vista-vim
      vim-swap
      vim-move
      vim-visual-multi
      vim-qf
      vim-exchange
      vimux
      asyncrun-vim
      vim-grepper
      incsearch-vim
      vim-abolish
      vim-eunuch
      vim-repeat
      vim-rhubarb
      vim-unimpaired
      # semshi - python
      vim-markdown
      rspec-vim
      vim-rails
      vim-ruby
      nvim-lspconfig
      mason-nvim
      formatter-nvim
    ];
}
