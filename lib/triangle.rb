class Triangle
  
  attr_accessor :length_side_one, :length_side_two, :length_side_three
  
  def initialize(length_side_one, length_side_two, length_side_three)
    @length_side_one = length_side_one
    @length_side_two = length_side_two
    @length_side_three = length_side_three
  end
  
  def kind(length_side_one, length_side_two, length_side_three) 
    if length_side_one == length_side_two && length_side_two == length_side_three
        :equilateral
    elsif length_side_one == length_side_two || length_side_two == length_side_three || length_side_one == length_side_three
        :isoceles
      else
        :scalene
    end
  end
  
  
end
