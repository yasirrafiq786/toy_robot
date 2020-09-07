class ToyRobot
  attr_accessor :facing, :position

  X = (0..4).to_a
  Y = (0..4).to_a
  DIRECTIONS = %w[north east south west].freeze

  def initialize; end

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
      (@position[1]).zero? ? nil : @position[1] -= 1
    when "west"
      (@position[0]).zero? ? nil : @position[0] -= 1
    else
      puts "Robot has not been placed on the table or you have entered an invalid input"
    end
  end

  def left
    case @facing
    when "north"
      self.facing = "west"
    when "west"
      self.facing = "south"
    when "south"
      self.facing = "east"
    when "east"
      self.facing = "north"
    else
      puts "Robot has not been placed on the table or you have entered an invalid input"
    end
  end

  def right
    case @facing
    when "north"
      self.facing = "east"
    when "east"
      self.facing = "south"
    when "south"
      self.facing = "west"
    when "west"
      self.facing = "north"
    else
      puts "Robot has not been placed on the table or you have entered an invalid input"
    end
  end

  def report
    if on_the_table?
      [@position[0], @position[1], @facing]
    else
      puts "Robot has not been placed on the table"
    end
  end

  def inside_table?(x, y)
    X.include?(x) && Y.include?(y)
  end

  def on_the_table?
    @position.nil? || @facing.nil? ? false : true
  end
end
