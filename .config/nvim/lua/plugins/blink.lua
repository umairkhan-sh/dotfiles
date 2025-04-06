return {
  'saghen/blink.cmp',
  opts = {
    keymap = { preset = 'default' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = "lua" }
  },
  opts_extend = { "sources.default" }
}
