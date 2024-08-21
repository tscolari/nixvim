_ : {

  extraConfigLua = ''
    ;(function ()

      if os.getenv('TMUX') ~= "" then
        vim.g['test#strategy'] = 'vimux'
        vim.g['test#preserve_screen'] = 0
      end

      -- vim.g['test#strategy'] = 'neovim'

      require("neotest").setup({
        adapters = {
          require('neotest-golang'),
          require("neotest-vim-test")({ ignore_filetypes = { "go" } }),
        }
      })

      require('telescope').load_extension('dap')

      vim.fn.sign_define('DapBreakpoint', { text = '🟥', texthl = "", linehl = "", numhl = "" })
      vim.fn.sign_define('DapStopped', { text = '▶️', texthl = "", linehl = "", numhl = "" })

    end)()
  '';

}
