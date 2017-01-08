# a text based adventure about collecting treasure in strange lands.
# the game starts on the edge of a new land
class Land
  def initialize
    @type = type
    @ambiance = ambiance
    @treasure = treasure
    @description = description
  end

  def description
    puts "You are on the edge of a #{size} expanse of #{type}. There's #{ambiance} in the air."
  end

  def size
    ["sprawling", "dark", "raining", "ravaged"].sample
  end

  def ambiance
    ["danger", "electricity", "a calm"].sample
  end

  def type
    ["desert", "fertile valley", "crags", "forest", "swamp"].sample
  end

  def treasure
    create_treasure
  end

  def create_treasure
    if self.type == "desert"
      ["bones", "stones", "moans", "lizard skin"].sample
    elsif self.type == "fertile valley"
      ["wheat", "meat", "peat"].sample
    elsif self.type == "crags"
      ["snow", "ice"].sample
    elsif self.type == "forest"
      ["branches", "firewood", "bugs", "leaves"].sample
    elsif self.type == "swamp"
      ["ghosts", "boasts", "urinary tract infection"].sample
    else
      puts "Land type not set!"
    end
  end

  def monster
    if @ambiance == "danger"
      puts "Oh dang there's a monster here dog"
    elsif self.ambiance == "electricity"
      puts "you get a lucky feeling about this place"
    else
      puts "nothing seems out of the ordinary . . ."
    end
  end

  # def has_beast?
  #   true if rand(11) > 2
  # end
  #

end

class Player
  def initialize name
    @name = name
    @health = health
    @backpack = {}
    # backpack can be a hash so that it adds new symbols as items are found and then tallied. {bones: 1, wheat: 4, ice: 3}
    @lands_travelled = 0
  end

  def name
    puts "What is your name?"
    name = gets.chomp
  end

  def health
    10
  end

  def current_land
    Land.new
  end

  def action_prompt

  end

  def action_with_warp_prompt

  end

  def fighting_action_prompt

  end

end

player = Player.new("kevin")

while player.health > 0 do
  new_land = player.current_land
  puts new_land.treasure
  action_prompt
    # regular: ["m - move", "b - backpack", "e - explore"]
    # if warp: ["m - move", "b - backpack", "e - explore", "w - warp"]
    # if fighting: ["a - attack", "r - run"]

end
