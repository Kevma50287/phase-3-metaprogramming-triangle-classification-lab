class Triangle
  attr_reader :side1, :side2, :side3
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (self.side1 > 0) && (self.side2 > 0) && (self.side3 > 0) && (self.side1 + self.side2 > self.side3) && (self.side2 + self.side3 > self.side1) && (self.side1 + self.side3 > self.side2)
      if (self.side1 == self.side2) && (self.side1 == self.side3)
        :equilateral
      elsif (self.side1 == self.side2) || (self.side2 == self.side3) || (self.side1 == self.side3)
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    # def message
    #   "Not a valid triangle. Sides must be larger than 0 and the length of any two sides is greater than the third"
    # end
  end

end
