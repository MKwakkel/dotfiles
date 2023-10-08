vim.loader.enable()

-- check if we have the latest stable version of nvim
local version = vim.version.parse(vim.fn.system({ "nvim", "-v" }), { strict = false })
local required_version = vim.version.parse("0.9.2")

if version == nil or required_version == nil or vim.version.lt(version, required_version) then
  local ver_string
  if version == nil then
    ver_string = "undefined"
  else
    ver_string = string.format("%s.%s.%s", version.major, version.minor, version.patch)
  end
  local msg = string.format("Expect nvim %s, but got %s instead. Use at your own risk!", required_version, ver_string)
  vim.api.nvim_err_writeln(msg)
end

vim.g.python3_host_prog = "/usr/bin/python3"

require("core")
require("lazy-setup")
