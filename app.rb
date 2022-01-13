require 'sinatra'
require 'sinatra/reloader'
require 'date'

class BirthdayApp < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/working'do
    @name = params[:name]
    @month = params[:month]
    @date = Date.today.strftime("%m")
    # Calendar.new (month) 
    # look up in a hash the month 
    # if logic 
    erb:working
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

end