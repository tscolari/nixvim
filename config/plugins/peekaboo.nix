_ : {

  extraConfigLua = ''
    ;(function ()

      local api = vim.api
      local buf, win

      local function floating_window()
        buf = api.nvim_create_buf(false, true) -- create new emtpy buffer

        api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')

        -- get dimensions
        local width = api.nvim_get_option("columns")
        local height = api.nvim_get_option("lines")

        -- calculate our floating window size
        local win_height = math.ceil(height * 0.8 - 4)
        local win_width = math.ceil(width * 0.8)

        -- and its starting position
        local row = math.ceil((height - win_height) / 2 - 1)
        local col = math.ceil((width - win_width) / 2)

        -- set some options
        local opts = {
          style = "minimal",
          relative = "editor",
          width = win_width,
          height = win_height,
          row = row,
          col = col,
        }

        -- and finally create it with buffer attached
        win = api.nvim_open_win(buf, true, opts)
        api.nvim_win_set_option(win, 'winblend', 10)
      end

      vim.g.peekaboo_window = [[lua require('plugins.peekaboo').open()]]

      return {
          open = floating_window,
      }

    end)()
  '';

}
