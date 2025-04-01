return {
    'nvim-java/nvim-java',
    require('java').setup(),
    require('lspconfig').jdtls.setup({}),
}
