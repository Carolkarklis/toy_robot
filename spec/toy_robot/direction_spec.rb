RSpec.describe ToyRobot::Direction do
  subject(:direction) { described_class }

  it "allows to create direction given a symbol" do
    north = direction[:north]

    expect(north).to be_a ToyRobot::Direction::North
  end
  
  describe ToyRobot::Direction::North do
    subject(:north) { described_class.new }

    it "knows which direction is at left" do
      expect(north.left).to be_a ToyRobot::Direction::West
    end

    it "knows which direction is at right" do
      expect(north.right).to be_a ToyRobot::Direction::East
    end
  end

  describe ToyRobot::Direction::South do
    subject(:south) { described_class.new }

    it "knows which direction is at left" do
      expect(south.left).to be_a ToyRobot::Direction::East
    end

    it "knows which direction is at right" do
      expect(south.right).to be_a ToyRobot::Direction::West
    end
  end

  describe ToyRobot::Direction::West do
    subject(:west) { described_class.new }

    it "knows which direction is at left" do
      expect(west.left).to be_a ToyRobot::Direction::South
    end

    it "knows which direction is at right" do
      expect(west.right).to be_a ToyRobot::Direction::North
    end
  end

  describe ToyRobot::Direction::East do
    subject(:east) { described_class.new }

    it "knows which direction is at left" do
      expect(east.left).to be_a ToyRobot::Direction::North
    end

    it "knows which direction is at right" do
      expect(east.right).to be_a ToyRobot::Direction::South
    end
  end
end