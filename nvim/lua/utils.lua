local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

function M.to_boolean(object)
  local object_type = type(object)

  if object_type == "boolean" then
    return object
  end
  if object == nil then
    return false
  end
  if object_type == "number" then
    return object ~= 0 and true or false
  end

  error("Invalid argument type")
  return nil
end

return M
