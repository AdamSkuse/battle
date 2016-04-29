require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.game_id
  end

  get '/' do
    erb(:index)
  end

  post '/sign-in' do
    if params[:number_of_players] == "one_player"
      erb(:one_player)
    else
      erb(:two_players)
    end
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.start_game(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.opponent)
    @game.over? ? erb(:game_over) : erb(:attack)
  end

  post '/swap' do
    @game.change_active_player
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
