# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_finder)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
  #    binding.pry
      if player[:player_name] == player_finder
        return player[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == name
        return player[:shoe]
      end
    end
  end
end

def team_colors(team_info)
#  binding.pry
   if team_info == "Charlotte Hornets"
     return game_hash[:away][:colors]
  # elsif team_info == "Brookyln Nets"
  else
    # binding.pry
       return game_hash[:home][:colors]
    end
end

def team_names
  game_hash.map do |team, team_info|
  #  binding.pry
    team_info[:team_name]
  end
end

def player_numbers(team_name)
  nums = []
  game_hash.each do |team, team_info|
    if team_info[:team_name] == team_name
      team_info.each do |key, value|
  #   binding.pry
        if key == :players
        #  binding.pry
          value.each do |stats|
          #  binding.pry
                nums.push(stats[:number])
              end
            end
          end
        end
    end
  return nums
end



def player_stats(name)
  stats = []
  game_hash.each do |team, team_info|
      team_info.each do |key, value|
          if key == :players
            value.each do |player|
          #    binding.pry
              if name == player[:player_name]
                return player
              end
            end
          end
        end
      end
    end

def big_shoe_rebounds
  biggest_shoe = 0
  rebounds = 0
  game_hash.each do |team, team_info|
      team_info[:players].each do |player|
        if player[:shoe] > biggest_shoe
          biggest_shoe = player[:shoe]
          rebounds = player[:rebounds]
      end
    end
  end
  return rebounds
end
