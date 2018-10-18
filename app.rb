require 'sinatra/base'
require './lib/player'
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
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect "/play"
  end

  get "/play" do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_score = $player_1.points
    @player_2_score = $player_2.points
    erb(:play)
  end

  get "/attack" do
    Game.new.attack($player_1, $player_2)
    erb(:attack)
  end

  run! if app_file == $0

end
