# log cron output
set :output, "/home/mportiz08/techstori/log/cron.log"

# update the database every half hour
every 30.minutes do
  rake "db:seed"
end
