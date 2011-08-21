require 'sinatra'

get '/' do
  erb :index
end

get '/auth/facebook/callback' do
  auth = request.env['omniauth.auth']
  @access_token = auth["credentials"]["token"]
  erb :index
end