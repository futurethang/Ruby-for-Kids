day  = 1
treasure_count            = 0
backpack                  = []
health                    = 5
escaped                   = false
monster                   = false
current_land              = create_land

puts "You are standing at the edge of a strange and new land. Explore this realm
and collect treasures while warding off monsters. If you survive long enough, you shall
be returned to your home world. Good luck."

while health > 0 and not escaped do
  actions = ["s - search", "m - move", "b - backpack"]
  danger_level = rand(1,5)
  
  puts "Day #{day}"
  puts create_land
  puts "there's a danger level of #{danger_level}"

  print "What will you do? (#{actions.join(', ')}):"



  if player_action == 'm'

  elsif player_action == 's'

  elsif player_action == 'b'

  elsif player_action == 'f'

  else
    puts "I don't understand that command"
  end
end
