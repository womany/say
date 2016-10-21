app_path = File.join(File.dirname(__FILE__), '..')
working_directory app_path

if ENV["RACK_ENV"] == "production"
  pid "#{app_path}/tmp/pids/rainbows.pid"
  stderr_path "#{app_path}/log/rainbows.log"
  stdout_path "#{app_path}/log/rainbows.log"
  listen "/tmp/rainbows.say.sock"
  worker_processes 2
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

before_fork do |server, worker|
  # Quit the old rainbows process
  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end
end
