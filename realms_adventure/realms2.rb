class Land
  @type = type
  @size = size
  @danger = false

  def has_beast?
  end

  def has_treasure?
  end

end

class Player
  def initialize
    @name = name
    health = 10
    backpack = []
  end

end

class Treasure
  def initialize
    @name = name
  end

  attr_accessor :treasure
  attr_accessor :value

  def treasure
    ['this', 'that', 'the other'].sample
  end

  def value
    rand(5)
  end


end

class Monster
  def initialize
    @name = name
    @strength = strength
  end
end

class Game

end



-----------------

puts "Tests"
# make a Land object that has a description
# test a land object for treasure
# test a land object for danger


# describe a game as a list of tests:
# Write code that takes input to create a player with a name, health counter,
# and a backpack.
# Add and remove items from the backpack
#
# Write code that creates Land objects with randomized land features, a boolean
# danger status, and random treasure item. Examine land.monster and land.treasure
#
# Append treasure to player.backpack
#
# Write code that creates a Monster object. Give the monster description and
# health attributes that can be changed.
#
# Write a Treasure object that has a description and value attributes. Make it
# generate for a new Land object, and append a backpack with it.
