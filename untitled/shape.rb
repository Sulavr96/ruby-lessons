include Math
class Shape
  def area
    @length*@breadth
  end
end
class Circle < Shape
def initialize radius
  @length=radius
  @breadth=PI*radius
end
end
class Rectangle < Shape
  def initialize length, breadth
    @length = length
    @breadth = breadth
  end
end
class Square < Shape
  def initialize side_length
    @length = side_length
    @breadth = side_length
  end

end
cir = Circle.new 5
#
rect = Rectangle.new 11, 12
square = Square.new 10
puts cir.area
puts rect.area #=> 132
puts square.area #=>100

