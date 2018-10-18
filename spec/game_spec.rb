require 'game'
require 'player'

describe Game do


  let (:becka) {double :player_1, name: "Becka"}
  let (:oli) {double :player_2, name: "Oli"}
  let (:game) {Game.new(becka, oli)}

  it 'attacks  a player' do
    expect(oli).to receive(:reduce_points)
    game.attack(becka, oli)
  end

end
