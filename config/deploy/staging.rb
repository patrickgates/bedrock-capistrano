set :stage, :staging

# Simple Role Syntax
# ==================
#role :app, %w{deploy@example.com}
#role :web, %w{deploy@example.com}
#role :db,  %w{deploy@example.com}

# Extended Server Syntax
# ======================
set :password, ask('server password: ', nil, echo: false)
server "server-ip", user: "deploy", password: fetch(:password), roles: %w{web app db}
set :deploy_to, "/home/www/www.example.com/htdocs/"

set :branch, "qa"

set :wpcli_remote_url, "http://staging-url.com"

set :wpcli_backup_db, true


# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
#  set :ssh_options, {
#    keys: %w(~/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }

fetch(:default_env).merge!(wp_env: :staging)
