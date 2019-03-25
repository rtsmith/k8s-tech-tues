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
    erb "<div> \
          <p>Guest \# <%= redis.get 'foo-array' %></p> \
          <p><%= request.get_header 'HTTP_HOST' %></p> \
          <p><%= request.get_header 'HTTP_USER_AGENT' %></p> \
        </div>"
  end

  get '/healthz' do
    if redis.ping
      status 200
    else
      status 500
    end
  end
end
