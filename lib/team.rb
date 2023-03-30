require 'pry'

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

  def long_term_players
    roster.find_all do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    short_term_players = roster.find_all do |player|
      player.contract_length <= 24
    end
    short_term_players.sort_by do |player|
      player.contract_length
    end
  
  end


  def total_value
    total = []
    roster.each do |player|
      total << player.total_cost
    end
    total.sum
  end

  def details
  {
    "#{"player_count"}"=> player_count,
    "#{"total_value"}"=> total_value
  }
  end

  def average_cost_of_player
    average_cost = total_value / 4
    average_cost.to_s
  end

  def players_by_last_name
    last_names = []
    roster.each do |player|
      last_names << player.last_name
    end
    last_names.sort.join(", ")
  end
  
end