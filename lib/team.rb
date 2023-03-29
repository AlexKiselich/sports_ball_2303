class Team
  attr_reader :roster, :player_count
  def initialize(name, city)
    @roster = []
    @player_count = 0
  end

  def add_player(player)
    @player_count += 1
    @roster << player
  end




end