require 'sinatra/base'
require_relative './lib/birthday_checker'

class BirthdayChecker < Sinatra::Base
  get '/' do
    thread = Thread.new do
      erb(:index)  
      p "Hello"
      sleep 2
      p "Goodbye"
      #redirect '/waiting'
      Thread.exit
    end
    thread.join
    redirect '/waiting'
  end

  get '/waiting' do
    p "Hello again"
    erb(:index2)
  end
  post '/check-birthday' do
    if checker.is_birthday?
      erb(:birthday)
    else
      erb(:not_birthday)
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end