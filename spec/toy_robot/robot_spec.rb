RSpec.describe ToyRobot::Robot do
  subject(:robot) { ToyRobot::Robot.new }

  describe '#place' do
    it 'places the robot on the table' do
      robot.place 0, 0, :south

      expect(robot.report).to eq "0,0,SOUTH"
    end
  end

  context 'It has not been placed' do
    it 'refuses to move' do
      expect { robot.move }.to raise_error ToyRobot::NeedToBeInPlace
      expect { robot.left }.to raise_error ToyRobot::NeedToBeInPlace
      expect { robot.right }.to raise_error ToyRobot::NeedToBeInPlace
    end
  end

  context 'it is placed' do
    before do
      robot.place 0,0, :north
    end

    it 'allows to move' do
      expect { robot.move }.to_not raise_error
      expect { robot.left }.to_not raise_error
      expect { robot.right }.to_not raise_error
    end    
  end

  describe '#move' do
    it 'moves robot one unit in north direction' do
      robot.place 0, 0, :north
      robot.move

      expect(robot.report).to eq "0,1,NORTH"
    end

    it 'moves robot one unit in east direction' do
      robot.place 0, 0, :east
      robot.move

      expect(robot.report).to eq "1,0,EAST"
    end

    it 'moves robot one unit in south direction' do
      robot.place 0, 1, :south
      robot.move

      expect(robot.report).to eq "0,0,SOUTH"
    end
  end
end