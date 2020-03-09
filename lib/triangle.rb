class Triangle
  
  attr_accessor :length_side_one, :length_side_two, :length_side_three
  
  def initialize(length_side_one, length_side_two, length_side_three)
    @length_side_one = length_side_one
    @length_side_two = length_side_two
    @length_side_three = length_side_three
  end
  
  def kind 
    if length_side_one == length_side_two && length_side_two == length_side_three
        :equilateral
    elsif length_side_one == length_side_two || length_side_two == length_side_three || length_side_one == length_side_three
        :isosceles
      else
        :scalene
    end
  end
  
  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end
  
  
end
