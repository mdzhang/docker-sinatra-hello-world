require 'sinatra'

get '/health' do
  [200,  'OK']
end

get '/' do
  redirect to('/health')
end