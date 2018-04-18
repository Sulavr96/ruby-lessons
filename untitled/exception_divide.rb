class ExceptionDivide

  def divide_num(n,a)
    begin
      $d= n/a
    rescue ZeroDivisionError

puts "The divisor cannot be 0 "

end
    puts $d
  end
  exdiv=ExceptionDivide.new()
  exdiv.divide_num(4,2)
  end