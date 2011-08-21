require 'sinatra'
require 'fb_graph'

get '/' do
  erb :index
end

get '/auth/facebook/callback' do
  @user_token = request.env['omniauth.auth']["credentials"]["token"]
  #user = FGraph::User.me(@user_token)
  # @accounts = user.accounts
  # @accounts = user.accounts.collect {|account| {:name => account.name, :access_token => account.access_token} }
  erb :index
end