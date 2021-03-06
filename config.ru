require 'rubygems'
require 'bundler/setup'
require 'oa-oauth'
require './authorize_fb'

use Rack::Session::Cookie

## Uses Omniauth to gain the right permissions to access your pages
##
use OmniAuth::Builder do
	provider :facebook, "your-facebook-app-id", #FB APP ID
	                    "your-facebook-app-secret", #FB APP SECRET
	                    :scope => "offline_access,manage_pages,publish_stream" #PERMISSIONS
end

run Sinatra::Application