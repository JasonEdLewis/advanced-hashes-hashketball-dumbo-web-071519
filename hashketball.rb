require "pry"
def game_hash
  {
    home: { team_name: 'Brooklyn Nets',
            colors: %w[Black White],
            players: [
              { player_name: 'Alan Anderson',
                number: 0,
                shoe: 16,
                points: 22,
                rebounds: 12,
                assists: 12,
                steals: 3,
                blocks: 1,
                slam_dunks: 1 },
              { player_name: 'Reggie Evans',
                number: 30,
                shoe: 14,
                points: 12,
                rebounds: 12,
                assists: 12,
                steals: 12,
                blocks: 12,
                slam_dunks: 7 },
              { player_name: 'Brook Lopez',
                number: 11,
                shoe: 17,
                points: 17,
                rebounds: 19,
                assists: 10,
                steals: 3,
                blocks: 1,
                slam_dunks: 15 },
              { player_name: 'Mason Plumlee',
                number: 1,
                shoe: 19,
                points: 26,
                rebounds: 11,
                assists: 6,
                steals: 3,
                blocks: 8,
                slam_dunks: 5 },
              { player_name: 'Jason Terry',
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1 }
            ] },
  
    away: { team_name: 'Charlotte Hornets',
            colors: %w[Turquoise Purple],
            players: [
              { player_name: 'Jeff Adrien',
                number: 4,
                shoe: 18,
                points: 10,
                rebounds: 1,
                assists: 1,
                steals: 2,
                blocks: 7,
                slam_dunks: 2 },
              { player_name: 'Bismack Biyombo',
                number: 0,
                shoe: 16,
                points: 12,
                rebounds: 4,
                assists: 7,
                steals: 22,
                blocks: 15,
                slam_dunks: 10 },
              { player_name: 'DeSagna Diop',
                number: 2,
                shoe: 14,
                points: 24,
                rebounds: 12,
                assists: 12,
                steals: 4,
                blocks: 5,
                slam_dunks: 5 },
              { player_name: 'Ben Gordon',
                number: 8,
                shoe: 15,
                points: 33,
                rebounds: 3,
                assists: 2,
                steals: 1,
                blocks: 1,
                slam_dunks: 0 },
              { player_name: 'Kemba Walker',
                number: 33,
                shoe: 15,
                points: 6,
                rebounds: 12,
                assists: 12,
                steals: 7,
                blocks: 5,
                slam_dunks: 12 }
            ] }
  }
            
end

def num_points_scored(player)
  players = game_hash[:home][:players]



  players.each do |bball|
    if bball[:player_name] == player
      puts player[:points]
      end

  end
end

def num_points_scored(player)
  player = player.downcase
  
    game_hash.each do |key, val|
    i = 0
    while i < val[:players].length
      baller_name = val[:players][i][:player_name]
      points_baller = val[:players][i][:points]
          if baller_name.downcase == player.downcase
              return points_baller
          end
         i += 1
      end
    end
end
          
def shoe_size(player)
  
   player = player.downcase
  
    game_hash.each do |key, val|
    i = 0
    while i < val[:players].length
      baller_name = val[:players][i][:player_name]
      shoe_baller = val[:players][i][:shoe]
          if baller_name.downcase == player.downcase
              return shoe_baller
          end
         i += 1
      end
    end
  
end

def team_colors(team)
      req_team = team
  game_hash.each_value do |info|
      if info[:team_name] == req_team
         return info[:colors]
      end
  end
end

def team_names
  the_teams = []
  for items in game_hash
  
  end
  
end

def team_names
the_teams = []
  game_hash.each_value do |info|
      the_teams << info[:team_name]
  end
   the_teams 
end

 def player_numbers(team)
 game_hash.each_key do |key|

  home_and_away_teams = game_hash[key]
  teams_names = home_and_away_teams[:team_name]
  players = home_and_away_teams[:players]
  jersey_numbers = []

  if teams_names.downcase == team.downcase
      i = 0
      
      while i < players.length
      players_nums = players[i][:number]
      jersey_numbers << players_nums
      i +=1
      end
     return jersey_numbers
  end
 
  end

     
end

def player_stats(player)
stats_of_player = {}

  game_hash.each_value do |val|
      i = 0
        while i < val[:players].length 
        if val[:players][i][:player_name].downcase == player.downcase
          stats_of_player[:stat] = val[:players][i].reject!{|x| x == :player_name}
          
        end
  
    i += 1
    end
  end

  stats_of_player[:stat]

end

def big_shoe_rebounds

 shoe_sizes = []
 rebounds_of_shoes = []
 game_hash.each_key do |key|

      i = 0
      home_and_away_teams = game_hash[key]
      players = home_and_away_teams[:players]
      
      while i < players.length
      shoe_sizes << players[i][:shoe]

      rebounds_of_shoes << players[i][:rebounds]
      i += 1
      end
    
  end 
        shoe_sizes
        biggest_size = shoe_sizes.sort[-1]
        rebounds_of_shoes[shoe_sizes.index(biggest_size)]
          
 end



