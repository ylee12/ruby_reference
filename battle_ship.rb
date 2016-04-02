# /*
# http://www.gamesmuseum.uwaterloo.ca/VirtualExhibits/electronic/battery/battleship/Electronic%20Battleship%20(2).JPG
# 
# 
# Design a 1 player command line battleship game that plays against an AI player, with the
# 
# following rules:
# 
# ● The game should have both boards set up automatically, users do not place their pieces
# 
# ● Users take turns entering coordinates
# 
# ● Board size - 10x10
# 
# ● Ships are:
# 
# ○ Aircraft - 5
# 
# ○ Battleship - 4
# 
# ○ Submarine - 3
# 
# ○ Destroyer - 3
# 
# 
# 
# ○ Patrol boat - 2
# */
# 
class Ship

    #coordinate 0 is x
    # coordinate 1 is y

    attr_accessor :size, :start_location, :end_location, :corrdinate
    
    def initialize(a, b, c, d)
    
     @size = a
     @start_location = b
     @end_location = c
     @corrdinate = d

    end
    
    def set_coordinate(c, d, e)
      @start_location = c
      @end_location = d + @size
      @corrdinate = e
    end
end

class Aircraft < Ship
end

class Battleship < Ship
end


class Submarine < Ship
end


class Destroyer < Ship
end

class PatrolBoat < Ship
end


aircraft = Aircraft.new(5, 0, 0, 0)
battleship= Battleship.new(4, 0, 0, 0)
submarine= Submarine.new(3, 0, 0, 0)
destroyer= Destroyer.new(3, 0, 0, 0)
patrol_boat= PatrolBoat.new(2, 0, 0, 0)


ship_array = Array.new(5)
ship_array[0] = aircraft
ship_array[1] = battleship
ship_array[2] = submarine
ship_array[3] = destroyer
ship_array[4] = patrol_boat


#initialize 
game_board_size = 10
largest_ship_size = 5

#max coordinate be placed on game board
max_location_allow = game_board_size - largest_ship_size


#place the ship
(0..4).each do |ship_number|

  begin
    begin_location = rand(1..10)
  end while begin_location > max_location_allow

  # place the ship in either x or y axis

  coordinate = rand(0..1)

  #end_location = rand(1..10)

  ship_array[ship_number].set_coordinate(begin_location, begin_location, coordinate) 
  puts "My ship #{ship_number} location is #{ship_array[ship_number].inspect}"

  
end


# output 
# [ylee@ylee-asus ruby_exercise]$ ruby battle_ship.rb 
# My ship 0 location is #<Aircraft:0x00000001930728 @size=5, @start_location=3, @end_location=8, @corrdinate=0>
# My ship 1 location is #<Battleship:0x00000001930700 @size=4, @start_location=1, @end_location=5, @corrdinate=1>
# My ship 2 location is #<Submarine:0x000000019306d8 @size=3, @start_location=5, @end_location=8, @corrdinate=0>
# My ship 3 location is #<Destroyer:0x000000019306b0 @size=3, @start_location=4, @end_location=7, @corrdinate=0>
# My ship 4 location is #<PatrolBoat:0x00000001930688 @size=2, @start_location=5, @end_location=7, @corrdinate=0>
# [ylee@ylee-asus ruby_exercise]$