set :stage, :local
set :server_name, "10.230.3.181"

set :server_domain_name, "open.wuliusys.com"
set :repo_url, 'git@git.rfdoa.cn:java/open.git'
set :branch, "master"

set :log_level, :debug
set :deploy_to, "/data/www/open"

set :use_sudo, true
set :thin_config, "#{shared_path}/config/thin.yml"
set :thin_pid, "#{shared_path}/tmp/pids/thin.0.pid"



# set :password, ask('Server password', nil)
# server fetch(:server_name), user: 'deploy', port: 22, password: fetch(:password), roles: %w{web app db}

server fetch(:server_name), user: "deploy", roles: %w{web app db}


