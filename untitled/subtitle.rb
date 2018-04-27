#file_array=IO.readlines("/home/sulav/Desktop/Thor.Ragnarok.2017.WEB-DL.x264-FGT.srt")

afile = File.open("thor.srt", "r+")

time_array = []
new_time_array=[]
time_to_add_in_seconds = 100
paired_time_array=[]
lines_array=[]


afile.each do |lines|
  numeric_value = lines.match(/\d{2}:\d{2}:\d{2},\d{3}/)
  if !numeric_value.nil?
    time_array.push(numeric_value)

  end

end
time_array.each do |time|
  split_time_array = time.to_s.split(":")
  split_time_array.to_s
  hours=split_time_array[0]
  minutes = split_time_array[1]
  miliseconds=split_time_array[2].to_s[/,\d{3}/]
  seconds = split_time_array[2].to_s[/[^,]+/]



  if time_to_add_in_seconds/60!=0
    updated_minute=minutes.to_i+time_to_add_in_seconds/60
    remaining_seconds=time_to_add_in_seconds-60
    updated_second=seconds.to_i+remaining_seconds
  else
    updated_second=seconds+time_to_add_in_seconds
  end
  if updated_second >= 60
    new_seconds=00
    additional_seconds=updated_second/60
    updated_minute=updated_minute+additional_seconds
    new_seconds=new_seconds+updated_second-60
  else
    new_seconds=new_seconds.to_i+updated_second
  end
  if updated_minute >=60
    new_minutes=00
    additional_minutes=updated_minute/60
    new_hours=hours.to_i+additional_minutes
    new_minutes=new_minutes+updated_minute-60
  else
    new_minutes=new_minutes.to_i+updated_minute
    new_hours=hours
  end


  if new_minutes.to_i< 10
    new_minutes="0#{new_minutes}"
  else
    new_minutes=new_minutes
  end
  if new_seconds.to_i< 10
    new_seconds="0#{new_seconds}"
  else
    new_seconds=new_seconds
  end
  updated_time_array=["#{new_hours}","#{new_minutes}","#{new_seconds}#{miliseconds}"]
  updated_time_array.to_s

  joined_time=updated_time_array.join(":")



  new_time_array << joined_time

for i in 0..new_time_array.length-1
  if i != new_time_array.last
    for j in (i+1)..new_time_array.length-1
   paired_times= "#{new_time_array[i]} --> #{new_time_array[j]}" "\r" "\n"


    end
  end
end
  paired_time_array.push(paired_times)
  end


file = IO.readlines("thor.srt")


  file.each do |lines|

  if lines.match(/\d{2}:\d{2}:\d{2},\d{3}/)
    lines_array.push lines
end
  end












