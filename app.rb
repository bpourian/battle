require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    # 'Testing infrastructure working!'
    erb :index
  end

  post '/names' do
    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]

    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])

    redirect '/play'
  end

  get '/play' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]

    @player_1_name = $player_1.player_name
    @player_2_name = $player_2.player_name

    erb :play
  end

  get '/attack' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    
    @player_1_name = $player_1.player_name
    @player_2_name = $player_2.player_name
    @player_2_score = Game.new.attack($player_2)

    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
