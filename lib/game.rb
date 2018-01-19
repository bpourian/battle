class Game
  attr_reader :current_turn, :previous_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @previous_turn = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @previous_turn = @current_turn
    @current_turn = opponent_of(@current_turn)
  end

  private

  def opponent_of(current_player)
    @players.select {|player| player != current_player}.first
  end
end
