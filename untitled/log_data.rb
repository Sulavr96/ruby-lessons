test_data = []
tests = []
control_data = []
controls = []
test_flag = false
control_flag = false
File.open('production', 'r') do |file|
  file.each do |lines|
    if lines.match ('test_type=test')
      test_flag = true
      control_flag = false

      if test_flag
        test_time = lines.match(/\d{4}-\d{2}-\d{2}\ \d{2}:\d{2}:\d{2}/)
        unless test_time.equal? nil
          test_data.push "time: #{test_time}"
        end
      end
    end

    if test_flag
      test_parameters = lines.match(/{(.*?)}/)
      unless test_parameters.equal? nil
        new_parameters = test_parameters.to_s.delete "{}"
        test_data.push "#{(new_parameters.to_s.delete '\\"')}"
        tests.push test_data
        test_data = []
      end
    end
    if lines.match('test_type=control')
      test_flag = false
      control_flag = true
      if control_flag
        control_time = lines.match(/\d{4}-\d{2}-\d{2}\ \d{2}:\d{2}:\d{2}/)
        unless control_time.equal? nil
          control_data.push "time: #{control_time}"
        end
      end
    end
    if control_flag
      control_parameters = lines.match (/{(.*?)}/)
      unless control_parameters.equal? nil
        new_parameters = control_parameters.to_s.delete "{}"
        control_data.push "#{(new_parameters.to_s.delete '\\"')}"
        controls.push control_data
        control_data = []
      end
    end
  end
end
puts "test= #{tests.to_s}"
puts "control=#{controls.to_s}"








