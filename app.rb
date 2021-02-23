require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @string = params[:user_phrase]
        @piglatinizer = PigLatinizer.new
        erb :piglatinize
    end

end