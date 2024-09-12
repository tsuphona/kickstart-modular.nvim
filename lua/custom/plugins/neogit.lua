return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
    -- 'ibhagwan/fzf-lua', -- optional
  },
  config = function()
    require('neogit').setup {
      integration = {
        telescope = true,
        diffview = true,
      },
      auto_refresh = true,
      status = {
        show_head_commit_hash = true,
        recent_commit_count = 20,
        HEAD_padding = 10,
        HEAD_folded = false,
        mode_padding = 3,
        mode_text = {
          M = 'modified',
          N = 'new file',
          A = 'added',
          D = 'deleted',
          C = 'copied',
          U = 'updated',
          R = 'renamed',
          DD = 'unmerged',
          AU = 'unmerged',
          UD = 'unmerged',
          UA = 'unmerged',
          DU = 'unmerged',
          AA = 'unmerged',
          UU = 'unmerged',
          ['?'] = '',
        },
      },
    }
  end,
}
