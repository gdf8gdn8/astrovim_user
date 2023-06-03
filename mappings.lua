-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<C-p>"] = {
      function()
        require("telescope.builtin").git_files {
          prompt_title = "git Files",
          cwd = cwd,
        } -- call telescope
      end,
      desc = "Find git files",
    },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers",function() vim.lsp.buf.code_action() end,desc="code action" },
    ["<leader>b"] = { name = "Buffers" },
    ['<leader>c'] = {name="Crates"},
    ['<leader>ct']={name="Crates toggle"},
    ['<leader>cr']={name="Crates reload"},
    ['<leader>cv' ] = { name="crates show versions popup"},
    ['<leader>cf' ] = { name="crates show features popup"},
    ['<leader>cd']= { name="Show dep. popup"},
    ['<leader>cu']= { name="Update crate"},
    ['<leader>ca']= { name="Update all crates"},
    ['<leader>cU']= { name="Upgrade crate"},
    ['<leader>cA']= { name="Upgrade all crates"},
    ['<leader>cH']= { name="Open homepage"},
    ['<leader>cR']= { name="Open repository"},
    ['<leader>cD']= { name="Open documentation"},
    ['<leader>cC']= { name="Open crates.io"},
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
