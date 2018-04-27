file= File.open('production','r')
test=[]
control=[]

test_flag=false
control_flag=false
new_parameter=[]
new_parameter1=[]
file.each do |lines|
  if lines.match ('test_type=test')
    test_flag=true
    control_flag=false
  end
  if test_flag
    time1=lines.match(/\d{4}-\d{2}-\d{2}\ \d{2}:\d{2}:\d{2}/)
    parameters1=lines.match(/{(.*?)}/)
    if !parameters1.equal? nil
      new_parameter1=[parameters1]
    end
  end

  if lines.match('test_type=control')
    test_flag=false
    control_flag=true
  end
  if control_flag
    time=lines.match(/\d{4}-\d{2}-\d{2}\ \d{2}:\d{2}:\d{2}/)

    end
    parameters=lines.match(/{([^}]+)}/)
    if !parameters.equal? nil
      new_parameter=[parameters]
      control.push new_parameter

    end
  if !time.equal? nil
    control.push time
  end
end
puts control.flatten





