require 'sinatra'
require 'haml'

require './numerology.rb'

require 'will_paginate'
require 'will_paginate/array' 
require 'will_paginate-bootstrap'

# require 'rack-flash'
# use Rack::Flash, :sweep => true
# enable :sessions

get '/name' do
  haml :name
end

post '/name' do
  names = params["username"]
  @all_names = []
  names = names.gsub(/\s+/, "").split(",")
  names.each do |name|
    count = namecount name
    num_val = rec_sum count
    row = "#{name.upcase},#{count},#{num_val}".split(",")
    @all_names.push(row)
  end
  @all_names = @all_names.paginate(:page => params[:page], :per_page => 10)
  #@all_names.each { |user| puts user.inspect }
  #flash[:notice] = "Your numerological count is : #{count}"
  # @message = "Numerological count : #{count}"
  # @value = "Numerological value : #{num_val}" 
  haml :name
end

