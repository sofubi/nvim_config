-- npm i -g yaml-language-server
return {
  cmd = { 'yaml-language-server', '--stdio' },
  filetypes = { 'yaml', 'yaml.docker-compose', 'yaml.gitlab' },
  settings = {
    yaml = {
      schemas = {
        ['https://json.schemastore.org/pre-commit-config.json'] = '.pre-commit-config.yaml',
        ['https://json.schemastore.org/pre-commit-hooks.json'] = '.pre-commit-hooks.yaml',
        ['https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json'] = 'docker-compose.yml',
        ['https://json.schemastore.org/github-workflow.json'] = '/.github/workflows/*',
      },
    },
    redhat = {
      telemetry = {
        enabled = false,
      },
    },
  },
}
