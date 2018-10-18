require 'sinatra/base'
require './lib/player'
require './lib/game'
# require 'sinatra/session'

class Battle < Sinatra::Base

  enable :sessions

  # def initialize
  #   @attack_notification  = ""
  # end

  get "/Becka" do
    "Hi Becka"
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    player_1= Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    erb(:play)
  end

  get "/attack" do
    @game = $game
    @game.attack(@game.player_1, @game.player_2)
    erb(:attack)
  end

  run! if app_file == $0

end
