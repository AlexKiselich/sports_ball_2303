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


def total_values
  total = []
  roster.each do |player|
    total << player.total_cost
  end
  total.sum
end


def details
  
end

  
end