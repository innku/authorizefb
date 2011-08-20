require 'sinatra'

get '/' do
  erb :index
end

get '/auth/facebook/callback' do
  auth_hash = request.env['omniauth.auth']
  @credentials = y(auth_hash)
  erb :index
end