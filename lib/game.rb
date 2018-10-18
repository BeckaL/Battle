class Game

  def attack(attacker, victim)
    $attack_notification = "#{attacker.name} attacked #{victim.name}"
    victim.reduce_points
  end

end
