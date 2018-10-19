class Game

  attr_reader :player_1, :player_2, :current_player, :players, :losing_statement

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2].cycle
    @current_player = @players.next
    @losing_statement = ""
  end

  def attack(attacker, victim)
    $attack_notification = "#{attacker.name} attacked #{victim.name}"
    victim.reduce_points
    lose(victim) if game_lost?(victim)
    switch_turns
  end

  def game_lost?(victim)
    victim.points <= 0
  end

  def lose(player)
    @losing_statement = "#{player.name} lost the game :-("
  end

  def switch_turns
    @current_player = @players.next
  end

  def passive_player
    @current_player == @player_1 ? @player_2 : @player_1
  end

end
