class Game

    attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_1_attack
    @player_2.get_attacked
  end


  def player_2_attack
    @player_1.get_attacked
  end

  def game_over
    return [@player_1, @player_2] if @player_1.lost?
    return [@player_2, @player_1] if @player_2.lost?
  end
end
