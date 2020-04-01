require 'sinatra/base'

class BirthdayChecker < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/check-birthday' do
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end