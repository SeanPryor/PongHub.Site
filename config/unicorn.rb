# Configuration for Unicorn web serer

# the default number of worker processes
worker_processes  Integer(ENV["WEB_CONCURRENCY"] || 3)
# the number of seconds a worker process is allowed to process a request
timeout           30
# preload the rails app before forking the workers
preload_app       true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
