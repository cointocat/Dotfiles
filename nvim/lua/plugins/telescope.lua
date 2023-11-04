return {
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        lazy = true,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-fzf-native.nvim' },
        keys = {
            { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, mode = "n", desc = "Telescope find files" }, },
            { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true }, },
            { "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true }, },
            { "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true }, },
            { "<leader>ft", "<cmd>lua require('telescope.builtin').treesitter()<cr>", { noremap = true }, },
        },
    }
}
