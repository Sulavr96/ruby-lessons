time=[01,59,39]
time_given=100
new_time=[]
if time_given/60!=0
  updated_minute=time[1]+time_given/60
  remaining_seconds=time_given-60
  updated_second=time[2]+remaining_seconds
else
  updated_second=time[2]+time_given
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
  new_hours=time[0]+additional_minutes
  new_minutes=new_minutes+updated_minute-60
else
  new_minutes=new_minutes.to_i+updated_minute
  new_hours=time[0]
end
new_time.push new_hours
new_time.push new_minutes
new_time.push new_seconds

puts new_time.to_s