require 'game'
require 'player'

describe Game do

  let (:game) {Game.new}
  let (:becka) {double :player_1, name: "Becka"}
  let (:oli) {double :player_2, name: "Oli"}

  it 'attacks  a player' do
    expect(oli).to receive(:reduce_points)
    game.attack(becka, oli)
  end

end
