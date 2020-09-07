require_relative "./toy_robot.rb"

toy_robot = ToyRobot.new

puts "Enter X"
x = gets.chomp.to_i
puts "Enter Y"
y = gets.chomp.to_i
puts "Enter Direction"
f = gets.chomp.strip.downcase
toy_robot.place(x, y, f)
