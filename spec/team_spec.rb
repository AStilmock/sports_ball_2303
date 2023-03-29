require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Player do

  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team).to be_an_instance_of(Team)
    expect(team.roster).to eq([])
    expect(team.player_count).to eq(0)
  end

  it 'adds players to the team roster' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team.add_player(player_1)
    team.add_player(player_2)
    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end

  it 'adds players to create team value' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.long_term_players).to eq([player_1, player_3])
    expect(team.short_term_players).to eq([player_2, player_4])
    expect(team.total_value).to eq(85200000)
    expect(team.details).to eq ({team.total_value, team.player_count})

  end
end