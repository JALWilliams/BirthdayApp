require 'sinatra'
require 'sinatra/reloader'
require 'date'
require_relative './lib/calendar.rb'

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
    @calendar = Calendar.new(params[:month])
    erb:working
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

end