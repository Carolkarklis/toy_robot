RSpec.describe ToyRobot::Directions do
  subject(:direction) { described_class }

  it "allows to create direction given a symbol" do
    north = direction[:north]

    expect(north).to be_a ToyRobot::Directions::North
  end
  
  describe ToyRobot::Directions::North do
    subject(:north) { described_class.instance }

    it "knows which direction is at left" do
      expect(north.left).to be_a ToyRobot::Directions::West
    end

    it "knows which direction is at right" do
      expect(north.right).to be_a ToyRobot::Directions::East
    end
  end

  describe ToyRobot::Directions::South do
    subject(:south) { described_class.instance }

    it "knows which direction is at left" do
      expect(south.left).to be_a ToyRobot::Directions::East
    end

    it "knows which direction is at right" do
      expect(south.right).to be_a ToyRobot::Directions::West
    end
  end

  describe ToyRobot::Directions::West do
    subject(:west) { described_class.instance }

    it "knows which direction is at left" do
      expect(west.left).to be_a ToyRobot::Directions::South
    end

    it "knows which direction is at right" do
      expect(west.right).to be_a ToyRobot::Directions::North
    end
  end

  describe ToyRobot::Directions::East do
    subject(:east) { described_class.instance }

    it "knows which direction is at left" do
      expect(east.left).to be_a ToyRobot::Directions::North
    end

    it "knows which direction is at right" do
      expect(east.right).to be_a ToyRobot::Directions::South
    end
  end
end