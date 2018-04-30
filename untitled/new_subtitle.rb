file=IO.readlines('thor.srt')
new_time_array=[]
lines_array=[]
line_array=[]
time_splited_array=[]
file.each do |lines|
  numeric_value = lines.match(/\d{2}:\d{2}:\d{2},\d{3} --> \d{2}:\d{2}:\d{2},\d{3}/)


  numeric_value_splited=numeric_value.to_s.split"-->"


  if !numeric_value_splited.nil?
    time_splited_array.push(numeric_value_splited)

  end
end
puts time_splited_array.to_s.split":"


