require 'sinatra'
require 'haml'

require './numerology.rb'

# require 'rack-flash'
# use Rack::Flash, :sweep => true
# enable :sessions

get '/name' do
  haml :name
end

post '/name' do
  count = namecount params["username"]
  #flash[:notice] = "Your numerological count is : #{count}"
  @message = "Your numerological count is : #{count}"
  haml :name
end

