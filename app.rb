require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "nothing"

  get '/' do
    erb(:index)
  end

  post "/names" do
    $Player_1 = Player.new(params[:Player_1])
    $Player_2 = Player.new(params[:Player_2])
    session[:Player_1_hp] = 600
    session[:Player_2_hp] = 600
    redirect '/play'
  end

  get '/play' do
    @Player_1 = $Player_1
    @Player_2 = $Player_2
    @Player_1_hp = session[:Player_1_hp]
    @Player_2_hp = session[:Player_2_hp]
    erb(:play)
  end

  post '/attack1' do
    session[:Player_2_hp] -= 50
    redirect '/play'
  end

  post '/attack2' do
    session[:Player_1_hp] -= 50
    redirect '/play'
  end
end
