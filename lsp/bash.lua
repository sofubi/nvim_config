return {
  cmd = { "bash-language-server", "start" },
  filetypes = { "sh", "bash" },
  root_markers = {
    ".bashrc",
    ".bash_profile",
    ".profile",
    ".bash_login",
    ".zshrc",
    ".zprofile",
    ".zlogin",
    ".zshenv",
    "Makefile",
    "package.json",
    "requirements.txt",
    ".git",
  },
  settings = {
    bashIde = {
      globPattern = "*@(.sh|.inc|.bash|.command)",
      shellcheckPath = "shellcheck",
      shellcheckArgs = { "--format=gcc" },
    },
  },
}
