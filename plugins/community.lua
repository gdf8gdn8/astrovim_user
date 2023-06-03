return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.colorscheme.nightfox", enabled = false },

  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { "rose-pine",
  opts = {
     disable_background = true,
     color = color or "rose-pine",
    	vim.cmd.colorscheme(color),

	    vim.api.nvim_set_hl(0, "Normal", { bg = "none" }),
	    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }),
    },
  },
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        ts_rainbow2 = true,
      },
    },
  },
  { import = "astrocommunity.completion.copilot-lua" },
  { -- further customize the options set by the community
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
  { "nvim-treesitter",
    opts = {
    -- add more things to the ensure_installed table protecting against community packs modifying it
    ensure_installed ={
      -- "lua"
      "vimdoc", "javascript", "typescript", "c", "lua", "rust","cpp", "python","bash","zig","cmake"
    },
      -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
      enable=true,
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
  },
}
}
