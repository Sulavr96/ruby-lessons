class Helper
  array=["ram","ra","hari"]
  array1=["hari","gopal","ram"]
  array3=[1,2,3,4,5,6]
  number=3

  sum=0
if  array.values_at(0)==array.values_at(1)
puts 'hello'

else
  puts 'tai'

end
  array3.each do |number|
    sum=sum+number
  end
   avg=sum/array3.size.to_f

 if avg!=number
   puts "hey"
 else
   puts"no"
 end

  end
