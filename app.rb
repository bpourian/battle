require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    # 'Testing infrastructure working!'
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
