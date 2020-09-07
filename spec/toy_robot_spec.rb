require "toy_robot"

describe ToyRobot do
  let(:toy_robot) { ToyRobot.new }

  describe "Is the toy robot inside the table" do
    it "Should return true if robot is inside the table" do
      expect(toy_robot.inside_table?(0, 0)).to eq true
    end

    it "Should return false if robot is outside the table" do
      expect(toy_robot.inside_table?(5, 1)).to eq false
    end
  end

  describe "Moving the robot" do
    it "should not do anything if robot can fall off the table" do
      toy_robot.place(0, 0, "south")
      toy_robot.move
      expect(toy_robot.position).to eq [0, 0]
    end

    it "should move in the direction it is facing only if not falling off the table" do
      toy_robot.place(0, 0, "north")
      toy_robot.move
      expect(toy_robot.position).to eq [0, 1]
    end
  end
end
