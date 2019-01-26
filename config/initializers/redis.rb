require 'redis'

REDIS_HOST = 'localhost'
$redis = Redis.new(:host => REDIS_HOST, :port => 6379)
$round_redis = Redis::Namespace.new(:round, redis: $redis)
$scoreboard = Redis::Namespace.new(:scoreboard, redis: $redis)
