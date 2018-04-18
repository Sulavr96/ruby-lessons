class Test

  arr=[6,7,8,9,15]
  arr1=arr.sort
  sum=0
  i=0
  arr1.each do |number|
    sum=sum+number
  end

  if sum%4!=0
  puts "The Array Cannot be divided"
  else
    arr1.each do|number|
      arr1.each do|num|
        a=number
        b=num
        if a+b==2*arr.last
          puts "person 3: #{arr.last}"
          end
        if a+b==arr1.last && a<b
          arr2=Array.new
          arr2.push(a,b)
          i+=1
          puts "person #{i}:"+ arr2.to_s
          end
        end


        end

    end


end


