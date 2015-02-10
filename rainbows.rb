worker_processes 10
timeout 30

Rainbows! do
  use :ThreadSpawn
  worker_connections 400 # default:50
  keepalive_requests 200 # default:100
end
