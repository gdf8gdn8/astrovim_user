return {
    {"NoahTheDuke/vim-just",
      name="just-vim",
      event = { "BufRead justfile" },
      onfig= function()
        require("just").setup {}
      end,
    }
}
