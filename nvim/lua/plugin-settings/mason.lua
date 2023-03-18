local M = {}

function M.setup()
  require("mason").setup({
    ui = {
      keymaps = {
        install_package = "I",
        update_package = "U",
        update_all_packages = "A",
        check_package_version = "c",
        check_outdated_packages = "C",
        uninstall_package = "X",
        cancel_installation = "<C-c>",
        apply_language_filter = "<C-f>",
      },
    },
  })
end

return M
