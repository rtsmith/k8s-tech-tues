require 'sinatra/base'
require 'redis'

def host
  ENV["REDIS_HOST"] || "localhost"
end

class App < Sinatra::Base
  def redis
    @redis ||= Redis.new host: host
  end

  get '/' do
    redis.incr "foo-array"
    redis.get "foo-array"
  end

  get 'healthz' do
    '_'
  end
end
