local vim = vim
local cmd = vim.cmd

-- Define a Neovim command called Projects
vim.cmd('command! -bang Projects call fzf#run(fzf#wrap({ "source": "find ~/dev/projects -maxdepth 1 -type d -not -path \'*/.git*\'" }, <bang>0))')
