set :stage, :local
set :server_name, "10.3.47.62"

set :server_domain_name, "open.wltest.com"
set :repo_url, 'git@git.rfdoa.cn:java/open.git'
set :branch, "dev"

set :log_level, :debug
set :deploy_to, "/data/www/open"

set :use_sudo, true
set :thin_config, "#{shared_path}/config/thin.yml"
set :thin_pid, "#{shared_path}/tmp/pids/thin.0.pid"



# set :password, ask('Server password', nil)
# server fetch(:server_name), user: 'deploy', port: 22, password: fetch(:password), roles: %w{web app db}

server fetch(:server_name), user: "deploy",password: "deploy", roles: %w{web app db}


