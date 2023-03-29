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
end