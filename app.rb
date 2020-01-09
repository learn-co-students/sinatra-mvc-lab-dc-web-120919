require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
        # byebug
    end

    post '/piglatinize' do
        pl = PigLatinizer.new()
        @piglatin = pl.piglatinize(params[:user_phrase])
        # byebug
    end

end