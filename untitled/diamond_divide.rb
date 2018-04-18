class DiamondDivide
  arr=[1,2,3,4,5]

  if arr.length.even?
    puts "Cannot distribute equally to 3 people”. "
  else
    i=0
    arr.each do|number|
      arr.each do|num|
        a=number
        b=num


     if a+b==10
       puts "player 3: 5"
     end

       if a+b == 5 && a < b
         arr1=Array.new

          arr1.push(a,b)
          i+=1
         puts "player #{i}:"+ arr1.to_s
     end
end
     end



    end
  end



