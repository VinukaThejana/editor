return {
    {
        -- Useful plugin to show you pending keybinds.
        'folke/which-key.nvim',
        event = 'VimEnter', -- Sets the loading event to 'VimEnter'
        config = function() -- This is the function that runs, AFTER loading
            require('which-key').setup {
                icons = {
                    -- set icon mappings to true if you have a Nerd Font
                    mappings = vim.g.have_nerd_font,
                    -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
                    -- default whick-key.nvim defined Nerd Font icons, otherwise define a string table
                    keys = vim.g.have_nerd_font and {} or {
                        Up = '<Up> ',
                        Down = '<Down> ',
                        Left = '<Left> ',
                        Right = '<Right> ',
                        C = '<C-…> ',
                        M = '<M-…> ',
                        D = '<D-…> ',
                        S = '<S-…> ',
                        CR = '<CR> ',
                        Esc = '<Esc> ',
                        ScrollWheelDown = '<ScrollWheelDown> ',
                        ScrollWheelUp = '<ScrollWheelUp> ',
                        NL = '<NL> ',
                        BS = '<BS> ',
                        Space = '<Space> ',
                        Tab = '<Tab> ',
                        F1 = '<F1>',
                        F2 = '<F2>',
                        F3 = '<F3>',
                        F4 = '<F4>',
                        F5 = '<F5>',
                        F6 = '<F6>',
                        F7 = '<F7>',
                        F8 = '<F8>',
                        F9 = '<F9>',
                        F10 = '<F10>',
                        F11 = '<F11>',
                        F12 = '<F12>',
                    },
                },
            }

            -- Document existing key chains
            require('which-key').add {
                { '<leader>c', group = '[C]ode',     mode = { 'n', 'x' } },
                { '<leader>d', group = '[D]ocument' },
                { '<leader>r', group = '[R]ename' },
                { '<leader>s', group = '[S]earch' },
                { '<leader>w', group = '[W]orkspace' },
                { '<leader>t', group = '[T]oggle' },
                { '<leader>g', group = '[G]it',      mode = { 'n', 'v' } },
            }
        end,
    },
    {
        -- Collection of various small independent plugins/modules
        'echasnovski/mini.nvim',
        config = function()
            -- Better Around/Inside textobjects
            --
            -- Examples:
            --  - va)  - [V]isually select [A]round [)]paren
            --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
            --  - ci'  - [C]hange [I]nside [']quote
            require('mini.ai').setup { n_lines = 500 }

            -- Add/delete/replace surroundings (brackets, quotes, etc.)
            --
            -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
            -- - sd'   - [S]urround [D]elete [']quotes
            -- - sr)'  - [S]urround [R]eplace [)] [']
            require('mini.surround').setup()

            -- Simple and easy statusline.
            --  You could remove this setup call if you don't like it,
            --  and try some other statusline plugin
            local statusline = require 'mini.statusline'
            -- set use_icons to true if you have a Nerd Font
            statusline.setup { use_icons = vim.g.have_nerd_font }

            -- You can configure sections in the statusline by overriding their
            -- default behavior. For example, here we set the section for
            -- cursor location to LINE:COLUMN
            ---@diagnostic disable-next-line: duplicate-set-field
            statusline.section_location = function()
                return '%2l:%-2v'
            end

            -- ... and there is more!
            --  Check out: https://github.com/echasnovski/mini.nvim
        end,
    }
}
