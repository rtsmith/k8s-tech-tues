require 'sinatra'

get '/' do
  "AHOY HOY!!"
end

get 'healthz' do
  '_'
end
