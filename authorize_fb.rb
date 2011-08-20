require 'sinatra'

get '/' do
  erb :index
end

get '/auth/facebook/callback' do
  auth_hash = request.env['omniauth.auth']
  to_display = y(auth_hash)
end