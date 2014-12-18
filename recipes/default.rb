# install some basic npm-packages
include_recipe 'nodejs::npm'

nodejs_npm 'grunt-cli'
nodejs_npm 'coffee-script'

# setup zsh

node.default[:oh_my_zsh][:users] = [
  {
    login: 'vagrant',
    theme: 'gnzh',
    plugins: ['git', 'npm', 'bower', 'coffee', 'node']
  },
  {
    login: 'root',
    theme: 'gnzh',
    plugins: ['git', 'npm', 'bower', 'coffee', 'node']
  }
]

include_recipe 'oh_my_zsh'
