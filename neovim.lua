return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#000d10", -- Default background
                base01 = "#289dbc", -- Lighter background (status bars)
                base02 = "#000d10", -- Selection background
                base03 = "#289dbc", -- Comments, invisibles
                base04 = "#2cd085", -- Dark foreground
                base05 = "#fcfdfe", -- Default foreground
                base06 = "#fcfdfe", -- Light foreground
                base07 = "#2cd085", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#c4f767", -- Variables, errors, red
                base09 = "#64ffd1", -- Integers, constants, orange
                base0A = "#1c71d8", -- Classes, types, yellow
                base0B = "#3dffe5", -- Strings, green
                base0C = "#f9f06b", -- Support, regex, cyan
                base0D = "#3db7ff", -- Functions, keywords, blue
                base0E = "#dc8add", -- Keywords, storage, magenta
                base0F = "#b2fdff", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
