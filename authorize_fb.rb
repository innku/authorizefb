require 'sinatra'

get '/' do
  erb :index
end

get '/auth/facebook/callback' do
  y(request.env['omniauth.auth'])
end