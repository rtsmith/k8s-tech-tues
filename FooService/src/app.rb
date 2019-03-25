require 'sinatra/base'

class App < Sinatra::Base
  set :bind, "0.0.0.0"

  get '/' do
    "AHOY HOY HOY!!"
  end

  get 'healthz' do
    '_'
  end
end
