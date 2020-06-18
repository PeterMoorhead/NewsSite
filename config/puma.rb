threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

port		ENV.fetch("PORT") { 3000 }

environment	ENV.fetch("RAILS_ENV") { "development" }

ActiveRecord::Base.establish_connection if defined? (ActiveRecord)
plugin :tmp_restart
