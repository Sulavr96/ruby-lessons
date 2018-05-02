#file_array=IO.readlines("/home/sulav/Desktop/Thor.Ragnarok.2017.WEB-DL.x264-FGT.srt")

afile = File.open("thor.srt", "r+")

time_array = []
new_time_array = []
puts "Enter time in seconds"
time_to_add_in_seconds = gets.to_i
paired_time_array = []
i = 0


afile.each do |lines|

  numeric_value = lines.match(/\d{2}:\d{2}:\d{2},\d{3} --> \d{2}:\d{2}:\d{2},\d{3}/)

  numeric_value_splited = numeric_value.to_s.split "-->"

  unless numeric_value_splited.nil?
    time_array.push(numeric_value_splited)

  end
end

time_array.flatten.each do |time|
  split_time_array = time.to_s.split(":")


  hours = split_time_array[0]

  minutes = split_time_array[1]

  miliseconds = split_time_array[2].to_s[/,\d{3}/]
  seconds = split_time_array[2].to_s[/[^,]+/]

  if time_to_add_in_seconds / 60 != 0
    updated_minute = minutes.to_i + time_to_add_in_seconds / 60
    remaining_seconds = time_to_add_in_seconds - 60
    updated_second = seconds.to_i + remaining_seconds
  else
    updated_second = seconds.to_i + time_to_add_in_seconds
    updated_minute = minutes
  end
  if updated_second >= 60
    new_seconds = 00
    additional_seconds = updated_second / 60
    updated_minute = updated_minute.to_i + additional_seconds
    new_seconds = new_seconds + updated_second - 60
  else
    new_seconds = new_seconds.to_i + updated_second
  end
  if updated_minute.to_i >= 60
    new_minutes = 00
    additional_minutes = updated_minute / 60
    new_hours = hours.to_i + additional_minutes
    new_minutes = new_minutes + updated_minute - 60
  else
    new_minutes = new_minutes.to_i + updated_minute.to_i

    new_hours = hours
  end


  if new_minutes.to_i < 10
    new_minutes = "0#{new_minutes}"
  else
    new_minutes = minutes
  end
  if new_seconds.to_i < 10
    new_seconds = "0#{new_seconds}"
  else
    new_seconds = new_seconds
  end
  updated_time_array = ["#{new_hours}", "#{new_minutes}", "#{new_seconds}#{miliseconds}"]


  joined_time = updated_time_array.join(":")


  new_time_array << joined_time


end
new_time_array.each_slice(2) do |pair|
  paired_time_array.push "#{pair[0]} -->#{pair[1]}\r\n"
end

file = IO.readlines("thor.srt")

file.each do |lines|
  index = file.index(lines)
  if lines.match(/\d{2}:\d{2}:\d{2},\d{3} --> \d{2}:\d{2}:\d{2},\d{3}/)
    file[index] = paired_time_array[i]
    i = i + 1
  end

end


File.open("new_subtitle.srt", "w+") do |f|
  f.puts(file)

end
puts "Subtitle converted"







