return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  {
    "simrat39/rust-tools.nvim",
    --"rust-tools",
    opts = function()
      local rt = require "rust-tools"

      rt.setup {
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            --       vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            --     vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      }
      -- Commands:
      -- RustEnableInlayHints
      -- RustDisableInlayHints
      -- RustSetInlayHints
      -- RustUnsetInlayHints

      -- Set inlay hints for the current buffer
      require("rust-tools").inlay_hints.set()
      -- Unset inlay hints for the current buffer
      require("rust-tools").inlay_hints.unset()

      -- Enable inlay hints auto update and set them for all the buffers
      require("rust-tools").inlay_hints.enable()
      -- Disable inlay hints auto update and unset them for all buffers
      require("rust-tools").inlay_hints.disable()
      -- Command:
      -- RustExpandMacro
      require("rust-tools").expand_macro.expand_macro()
      -- Command:
      -- RustMoveItemUp
      -- RustMoveItemDown
      local up = true -- true = move up, false = move down
      require("rust-tools").move_item.move_item(up)
      -- Command:
      -- RustHoverRange
      require("rust-tools").hover_range.hover_range()
      -- Command:
      -- RustHoverActions
      require("rust-tools").hover_actions.hover_actions()
      -- Command:
      -- RustOpenCargo
      require("rust-tools").open_cargo_toml.open_cargo_toml()
    end,
    -- Command:
    -- RustViewCrateGraph [backend [output]]
    --  require'rust-tools'.crate_graph.view_crate_graph(backend, output)
  },
  { import = "astrocommunity.colorscheme.nightfox",  enabled = false },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "rose-pine",
    opts = {
      disable_background = true,
      color = color or "rose-pine",
      vim.cmd.colorscheme(color),

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" }),
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }),
    },
  },
  {
    -- further customize the options set by the community
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
  { import = "astrocommunity.completion.codeium-vim" },
  {
    --   -- further customize the options set by the community
    "codeium.vim",
    opts = {
      enabled = false,
      -- suggestion = {
      --     --   keymap = {
      --     accept = "<C-l>",
      --     accept_word = false,
      --     accept_line = false,
      --     next = "<C-.>",
      --     prev = "<C-,>",
      --     dismiss = "<C/>",
      --   },
      -- },
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
  {
    "nvim-treesitter",
    opts = {
      -- add more things to the ensure_installed table protecting against community packs modifying it
      ensure_installed = {
        -- "lua"
        "vimdoc",
        "javascript",
        "typescript",
        "c",
        "lua",
        "rust",
        "cpp",
        "python",
        "bash",
        "zig",
        "cmake",
      },
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,

      highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
