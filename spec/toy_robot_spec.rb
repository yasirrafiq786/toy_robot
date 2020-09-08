require "toy_robot"

describe ToyRobot do
  let(:toy_robot) { ToyRobot.new }

  describe "Has Robot been placed on the table" do
    it "Should return false if robot has not been assigned a position or direction" do
      expect(toy_robot.on_the_table?).to eq false
    end
  end

  describe "Is the toy robot inside the table" do
    it "Should return true if robot is inside the table" do
      expect(toy_robot.inside_table?(0, 0, "north")).to eq true
    end

    it "Should return false if robot is outside the table" do
      expect(toy_robot.inside_table?(5, 1, "south")).to eq false
    end

    it "Should return false if wrong direction is given" do
      expect(toy_robot.inside_table?(5, 1, "southeast")).to eq false
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

  describe "Rotating the robot" do
    it "LEFT command should rotate robot at its place 90 degree counter clockwise" do
      toy_robot.place(1, 1, "north")
      toy_robot.left
      expect(toy_robot.facing).to eq "west"
    end

    it "RIGHT command should rotate robot at its place 90 degree clockwise" do
      toy_robot.place(2, 1, "south")
      toy_robot.right
      expect(toy_robot.facing).to eq "west"
    end
  end

  describe "Reporting the position" do
    it "Should report its current position" do
      toy_robot.place(1, 2, "east")
      toy_robot.move
      toy_robot.move
      toy_robot.left
      toy_robot.move
      expect(toy_robot.report).to eq [3, 3, "north"]
    end
  end
end
