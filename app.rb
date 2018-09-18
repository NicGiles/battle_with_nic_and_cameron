require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "nothing"

  get '/' do
    erb(:index)
  end

  post "/names" do
    player_1 = Player.new(params[:Player_1])
    player_2 = Player.new(params[:Player_2])
    session[:game] = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    redirect '/winner' if session[:game].game_over
    @Player_1 = session[:game].player_1
    @Player_2 = session[:game].player_2
    erb(:play)
  end

  post '/attack1' do
    session[:game].player_1_attack
    redirect '/play'
  end

  post '/attack2' do
    session[:game].player_2_attack
    redirect '/play'
  end

  get '/winner' do
    players = session[:game].game_over.map { |player| player.name }
    @losing_player, @winning_player = players
    erb(:win)
  end


end
