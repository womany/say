# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'say'
set :repo_url, 'git@github.com:womany/say.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/apps/say'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/application.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :rvm_type, :user                     # Defaults to: :auto
set :rvm_ruby_version, '2.2.3'           # Defaults to: 'default'

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :start do
    invoke 'rainbows:start'
  end

  task :stop do
    invoke 'rainbows:stop'
  end

  task :restart do
    invoke 'rainbows:restart'
  end
end
