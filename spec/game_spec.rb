require 'game'
require 'player'

describe Game do


  let (:becka) {double :player_1, name: "Becka", points: 100}
  let (:oli) {double :player_2, name: "Oli", points: 100}
  let (:game) {Game.new(becka, oli)}

  it 'attacks  a player' do
    expect(oli).to receive(:reduce_points)
    game.attack(becka, oli)
  end

  it 'starts off with player one' do
    expect(game.current_player).to eq becka
  end

end
