class Team
  attr_reader :team_name, :city, :roster, :player_count
  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
    @player_count = 0
  end

  def add_player(new_player)
    @roster << new_player
    @player_count += 1
  end
  

end