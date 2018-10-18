class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(attacker, victim)
    $attack_notification = "#{attacker.name} attacked #{victim.name}"
    victim.reduce_points
  end

end
