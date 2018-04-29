file = File.open('production', 'r')
_test_data = []
_tests=[]
_control_data = []
_controls=[]
_test_flag = false
_control_flag = false
_test_time = 0
_control_time = 0
_test_parameters = []
_control_parameters = []

file.each do |lines|
  if lines.match ('test_type=test')
    _test_flag = true
    _control_flag = false

    if _test_flag
      _test_time = lines.match(/\d{4}-\d{2}-\d{2}\ \d{2}:\d{2}:\d{2}/)
      unless _test_time.equal? nil
        _test_data.push "time: #{_test_time}"
      end
    end
  end

  if _test_flag
    _test_parameters = lines.match(/{(.*?)}/)
    unless _test_parameters.equal? nil
      new_parameters=_test_parameters.to_s.delete "{}"
      _test_data.push "#{(new_parameters.to_s.delete '\\"')}"
      _tests.push _test_data
      _test_data=[]
    end
  end



  if lines.match('test_type=control')

    _test_flag = false
    _control_flag = true

    if _control_flag
      control_time = lines.match(/\d{4}-\d{2}-\d{2}\ \d{2}:\d{2}:\d{2}/)
      unless control_time.equal? nil
        _control_data.push "time: #{control_time}"
      end
    end
  end

    if _control_flag
      control_parameters = lines.match (/{(.*?)}/)
      unless control_parameters.equal? nil
        new_parameters=control_parameters.to_s.delete"{}"
        _control_data.push "#{(new_parameters.to_s.delete '\\"')}"
        _controls.push _control_data
        _control_data=[]
      end


    end

end

puts _tests.to_s
puts _controls.to_s








