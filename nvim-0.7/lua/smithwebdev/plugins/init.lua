local install_path = os.getenv('HOME').. '/.local/share/nvim-nightly/site/pack/packer/opt/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  local plugin_repo = 'https://github.com/wbthomason/packer.nvim'
  local cli = string.format('!git clone %s %s', plugin_repo, install_path)
  vim.cmd(cli)
end

vim.cmd 'packadd packer.nvim'
local packer = require'packer'

-- Use your local data path and not plugin/
-- this is `~/.local/share/nvim/site/plugin/packer_compiled.lua` in WSL/Linux and MacOS
packer.init {
  package_root = os.getenv('HOME') .. '/.local/share/nvim-nightly/site/pack',
  compile_path = os.getenv('HOME') .. '/.config/nvim-nightly/plugin/packer_compiled.vim',
}

local plugins = {

  -- Completion & Snippets -- 
  --'cmp',                 -- https://github.com/hrsh7th/nvim-cmp
  --'luasnip',             -- https://github.com/L3MON4D3/LuaSnip

}

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  for _, v in pairs(plugins) do
    use(require('smithwebdev.plugins.config.'..v).plugin)
  end
end)

print('Plugins connected...')
