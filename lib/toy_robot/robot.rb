require 'byebug'
module ToyRobot
  class NeedToBeInPlace < StandardError; end

  class Robot
    def place(x, y, facing)
      @x = x
      @y = y
      @facing = ToyRobot::Directions[facing]
      @placed = true
    end

    def report
      "#{@x},#{@y},#{@facing.to_s.upcase}"
    end

    def left
      raise NeedToBeInPlace.new unless @placed
      @facing = @facing.left
    end

    def right
      raise NeedToBeInPlace.new unless @placed
      @facing = @facing.right
    end

    def move
      raise NeedToBeInPlace.new unless @placed

      if @facing.to_s == "NORTH"
        @y += 1
      elsif @facing.to_s == "SOUTH"
        @y -= 1
      elsif @facing.to_s == "WEST"
        @x -= 1
      elsif @facing.to_s == "EAST"
        @x += 1 
      end
    end
  end
end