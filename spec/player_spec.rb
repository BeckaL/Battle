describe Player do

  it 'returns a name' do
    player = Player.new("Becka")
    expect(player.name).to eq "Becka"
  end


end
