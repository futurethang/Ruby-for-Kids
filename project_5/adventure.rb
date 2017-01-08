# A random text adventure game

def create_room
  "You are in a #{size} #{color} #{room_type}. There is an exit on the #{direction} wall."
end

def size
  ["huge", "sticky", "damp", "all-velvet", "deeply funky"].sample
end

def color
  ["slime green", "chartruse", "all-black", "red-lit", "bright"].sample
end

def room_type
  ["sex kitchen", "thruster's den", "guest bedroom", "gayrage", "penis palace"].sample
end

def direction
  ["slutty", "undecorated", "ivy-covered", "pulsating", "smelliest"].sample
end

def has_monster?
  if roll_dice(2,6) >= 6
    true
  else
    false
  end
end

def roll_dice number_of_dice, size_of_dice
  total = 0
  1.upto(number_of_dice) do
    total = total + rand(size_of_dice) + 1
  end
    total
end

def has_escaped?
  if roll_dice(2,6) >= 11
    true
  else
    false
  end
end

def new_monster
  "It's #{description}, about #{monster_size} with #{feature} all over it. Yuck!"
end

def description
  ["morbidly obese", "waifish", "charred completely black", "without skin entirely", "nekkid"].sample
end

def monster_size
  ["two foot tree", "big enough to live in my pocket", "thirty dicks long", "eight feet chubby"].sample
end

def feature
  ["pimples", "open sores", "theater blood", "urine-soaked newspapers", "enchilada shrapnel"].sample
end

def monster_attack?
  if roll_dice(2,6) >= 9
    true
  else
    false
  end
end

def defeat_monster?
  if roll_dice(2,6) >= 4
    true
  else
    false
  end
end

def has_treasure?
  if roll_dice(2,6) >= 8
    true
  else
    false
  end
end

def treasure
  ["golden beads", "neon beads", "beads of alabaster", "STD-laden beads", "swamp beads", "wooden beads"].sample
end

number_of_rooms_explored  = 1
treasure_count            = 0
damage_points             = 5
escaped                   = false
monster                   = false
current_room              = create_room
backpack = []

puts "HA! I have trapped you in my Sex Dungeon! Collect mystical anal beads,
and try to escape . . ."
puts " before I relentlessly sodomize you!!"
puts "To play, type one of the command choices on each turn"
puts ""

while damage_points > 0 and not escaped do
  actions = ["m - move", "s - search", "b - backpack", "q - quit"]
  puts "Room number #{number_of_rooms_explored}"
  puts current_room

  if monster
    puts "OH NO there's a Sex Dungeon Monster in here with you!"
    puts new_monster
    actions << "f - fight"
  end

  print "What will you do? (#{actions.join(', ')}):"

  player_action = gets.chomp
  if monster and monster_attack?
    damage_points = damage_points - 1
    puts "THUD! the Monster whacked you with a dildo!"
    puts "Lose 1 damage point"
  end

  if player_action == "m"
    current_room = create_room
    number_of_rooms_explored = number_of_rooms_explored + 1
    monster = has_monster?
    escaped = has_escaped?
  elsif player_action == "s"
    if has_treasure?
      puts "You found #{treasure}!"
      treasure_count = treasure_count + 1
      backpack << treasure
    else
      puts "You look, but couldn't find anything sexy"
    end
    #when you look for tresure you might find another monster
    if not monster
      monster = has_monster?
    end
  elsif player_action == "f"
    if defeat_monster?
      monster = false
      puts "You defeated the sexy Monster! Have your way with it."
    else
      puts "You attack and MISS!!!"
    end
  elsif player_action == 'b'
    puts backpack
  elsif player_action == "q"
    puts "Thanks for playing!"
    exit
  else
    puts "Can't help you with that command"
  end
  puts ""


end


if damage_points > 0
  puts "You escaped!"
  puts "You explored #{number_or_rooms_explored} rooms"
  puts "and found #{treasure_count} mystical anal beads"
else
  puts "OH NO! You ain't gonna get away from my lecherous claws!"
  puts "You explored #{number_or_rooms_explored} rooms"
  puts "before meeting your DOOM!"
end
