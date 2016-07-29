app_path = File.join(File.dirname(__FILE__), '..')
working_directory app_path

if ENV["RAILS_ENV"] == "production"
  pid "#{app_path}/tmp/pids/rainbows.pid"
  stderr_path "#{app_path}/log/rainbows.log"
  stdout_path "#{app_path}/log/rainbows.log"
  worker_processes 5
else
  worker_processes 1
end
preload_app true
timeout 30

Rainbows! do
  use :ThreadSpawn
  worker_connections 400 # default:50
  keepalive_requests 200 # default:100
end
