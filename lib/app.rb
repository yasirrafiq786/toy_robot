require_relative "./toy_robot.rb"
require_relative "./simulator.rb"

toy_robot = ToyRobot.new
simulator = Simulator.new(toy_robot)
simulator.run
