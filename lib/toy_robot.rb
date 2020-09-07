class ToyRobot
  X = (0..4).to_a
  Y = (0..4).to_a
  DIRECTIONS = %w(north east south west)

  def initialize
  end

  def place(x, y, f)
    if inside_table?(x, y)
      @direction = f
    else
      puts "Position is outside the table"
    end
  end

  def inside_table?(x, y)
    X.include?(x) && Y.include?(y)
  end
end
