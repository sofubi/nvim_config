-- Terraform language server Download a released binary from https://github.com/hashicorp/terraform-ls/releases
return {
  cmd = { 'terraform-ls', 'serve' },
  filetypes = { 'terraform', 'terraform-vars' },
  root_markers = {
    ".terraform",
    ".git",
  },
}
