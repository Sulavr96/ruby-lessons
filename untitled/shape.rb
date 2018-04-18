include Math
class Shape
  def area1(a)
    b=PI*a*a
    c=b.to_f
  end
  def area (b,c)
    b*c
  end
  class Circle <Shape

  end
  class Rectangle<Shape


  end
  rect=Rectangle.new
  cir=Circle.new
  puts rect.area(3,6)
  puts cir.area1(3)


end