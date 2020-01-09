require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        string = params[:user_phrase]
        @piglatin = PigLatinizer.new
        @new_word = @piglatin.piglatinize(string)
        @new_word
        erb :piglatinize

    end


end
