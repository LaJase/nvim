local loaded, neorg = pcall(require, 'neorg')
if not loaded then return end

neorg.setup {
    load = {
        ["core.defaults"] = {},
        ["core.completion"] = {
            config = {
                engine = "nvim-cmp",
            },
        },
        ["core.concealer"] = {
            config = {
                folds = false,
                icons = {
                    todo = {
                        undone = {
                            icon = " "
                        }
                    }
                }
            },
        },
        ["core.dirman"] = {
            config = {
                workspaces = {
                    work = "~/notes/work",
                    home = "~/notes/home",
                },
                default_workspace = "work",
                index = "index.norg",
            }
        }
    }
}

-- vim.opt.foldlevelstart = 99
