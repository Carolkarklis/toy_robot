module ToyRobot
  class NeedToBeInPlace < StandardError; end

  class Robot
    def place(x, y, facing)
      @x = x
      @y = y
      @facing = facing
      @placed = true
    end

    def report
      "#{@x},#{@y},#{@facing.to_s.upcase}"
    end

    def left
      raise NeedToBeInPlace.new unless @placed
      case @facing
      when :north
        @facing = :west
      when :west
        @facing = :south
      when :south
        @facing = :east
      when :east
        @facing = :north
      end
    end

    def right
      raise NeedToBeInPlace.new unless @placed
      case @facing
      when :north
        @facing = :east
      when :west
        @facing = :north
      when :south
        @facing = :west
      when :east
        @facing = :south
      end
    end

    def move
      raise NeedToBeInPlace.new unless @placed

      case @facing
      when :north
        @y += 1
      when :east
        @x += 1
      when :south
        @y -= 1
      when :west
        @x -= 1
      end
    end
  end
end