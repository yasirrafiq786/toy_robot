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
end
