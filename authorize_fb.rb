require 'sinatra'

get '/' do
  erb :index
end

get '/auth/facebook/callback' do
  auth = request.env['omniauth.auth']
  puts auth.inspect
  @credentials = y(auth_hash)
  erb :index
end