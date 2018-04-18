class Test

  diamondArray=[6,7,8,9,15]
  sorted_DiamondArray=diamondArray.sort
  sum=0
  person_Count=0
  total_person=3
  sorted_DiamondArray.each do |number|
    sum=sum+number
  end

  if sum%total_person!=0
  puts "The Array Cannot be divided"
  else
    sorted_DiamondArray.each do|number|
      sorted_DiamondArray.each do|num|
        a=number
        b=num
        if a+b==2*sorted_DiamondArray.last
          puts "person #{total_person}: #{sorted_DiamondArray.last}"
          end
        if a+b==sorted_DiamondArray.last && a<b
          distributed_arr=Array.new
          distributed_arr.push(a,b)

          person_Count+=1
          puts "person #{person_Count}:"+ distributed_arr.to_s
          end
        end


        end

    end


end


