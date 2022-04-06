vim.g.coq_settings = {
    ['clients.snippets.warn']   = {},
    ['clients.tmux.enabled']    = false,
    ['auto_start']              = 'shut-up',
    ['display.icons.mode']      = 'none',
    ['keymap.jump_to_mark']     = '<C-F>'
}

vim.cmd([[COQnow]])
