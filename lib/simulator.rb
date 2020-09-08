require_relative "./toy_robot.rb"

class Simulator
  def initialize(toy_robot)
    @toy_robot = toy_robot
    @running = true
  end

  def simulate(command)
    case command
    when 1
      puts "Select X Coordinate"
      x = gets.chomp.to_i
      puts "Select Y Coordinate"
      y = gets.chomp.to_i
      puts "Which direction you want it facing (north,south,east or west)?"
      f = gets.chomp.downcase
      @toy_robot.place(x, y, f)
    when 2 then @toy_robot.move
    when 3 then @toy_robot.left
    when 4 then @toy_robot.right
    when 5 then @toy_robot.report
    when 6 then stop
    else
      puts "Enter a Valid Command"
    end
  end

  def run
    print `clear`
    puts "WELCOME TO THE ULTIMATE TOY ROBOT SIMULATOR"
    puts "*******************************************"
    while @running
      simulator_tasks
      command = gets.chomp.to_i
      simulate(command)
      puts "Executed Command #{command}"
    end
    puts "Thanks for playing"
  end

  def simulator_tasks
    puts ""
    puts "Please choose your command number wisely"
    puts "1 - Place the Robot"
    puts "2 - MOVE"
    puts "3 - LEFT"
    puts "4 - RIGHT"
    puts "5 - REPORT"
    puts "6 - EXIT"
  end

  def stop
    @running = false
  end
end
