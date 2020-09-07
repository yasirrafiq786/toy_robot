class ToyRobot
  attr_accessor :facing, :position

  X = (0..4).to_a
  Y = (0..4).to_a
  DIRECTIONS = %w(north east south west)

  def initialize
  end

  def place(x, y, f)
    if inside_table?(x, y)
      @position = [x, y]
      @facing = f
    else
      puts "Position is outside the table"
    end
  end

  def move
    case @facing
    when "north"
      @position[1] == 4 ? nil : @position[1] += 1
    when "east"
      @position[0] == 4 ? nil : @position[0] += 1
    when "south"
      @position[1] == 0 ? nil : @position[1] -= 1
    when "west"
      @position[0] == 0 ? nil : @position[0] -= 1
    else
      puts " Not a valid input"
    end
  end

  def inside_table?(x, y)
    X.include?(x) && Y.include?(y)
  end
end
