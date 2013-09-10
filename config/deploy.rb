require "rvm/capistrano"
require "bundler/capistrano"
require "capistrano-nginx-unicorn"


#path to customized templates (see below for details)
# default value: "config/deploy/templates"
set :templates_path, "config/deploy/templates"

# server name for nginx, default value: no (will be prompted if not set)
# set this to your site name as it is visible from outside
# this will allow 1 nginx to serve several sites with different `server_name`
set :nginx_server_name, "112.124.57.67"

# path, where unicorn pid file will be stored
# default value: `"#{current_path}/tmp/pids/unicorn.pid"`
set :unicorn_pid, "#{current_path}/tmp/pids/unicorn.pid"

# path, where unicorn config file will be stored
# default value: `"#{shared_path}/config/unicorn.rb"`
set :unicorn_config, "#{shared_path}/config/unicorn.rb"

# path, where unicorn log file will be stored
# default value: `"#{shared_path}/config/unicorn.rb"`
set :unicorn_log, "#{shared_path}/config/unicorn.rb"

# user name to run unicorn
# default value: `user` (user varibale defined in your `deploy.rb`)
set :unicorn_user, "deploy"

# number of unicorn workers
# default value: no (will be prompted if not set)
set :unicorn_workers, 4


set :application, "dake"
set :repository,  "git@github.com:cmingxu/dake.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "112.124.57.67"                          # Your HTTP server, Apache/etc
role :app, "112.124.57.67"                          # This may be the same as your `Web` server
role :db,  "112.124.57.67", :primary => true # This is where Rails migrations will run
role :db,  "112.124.57.67"

set :user, "deploy"
set :password, "Xuchunming123"

set :use_sudo, false

set :deploy_to, "/home/deploy/code/#{application}"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
#
default_run_options[:pty] = true
set :rvm_ruby_string,  "ruby-1.9.3-p392"
#set :rvm_type, :user
set :rvm_bin_path, "/home/deploy/.rvm/bin"

#after 'deploy:setup', 'rvm:install_rvm'
#after 'deploy:setup', 'rvm:install_ruby'


namespace :deploy do
  desc "cause Passenger to initiate a restart"
  task :update_bundle do
    run "cd #{release_path} && bundle install"
  end

end

namespace :db do
  task :db_config, :except => { :no_release => true }, :role => :app do
    run "cp -f #{release_path}/config/database.yml.template #{release_path}/config/database.yml"
  end
end

after "deploy:update_code", "db:db_config", "deploy:update_bundle", "deploy:migrate"


before 'deploy:setup', 'rvm:install_rvm'
before 'deploy:setup', 'rvm:install_ruby'

