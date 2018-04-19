class Test
  diamond_array=[1,2,3,4,5]
  sorted_diamond_array=diamond_array.sort
  sum=0
  person_count=0
  total_person=3
  diamond_array_size=sorted_diamond_array.size.to_f
  diamond_sum=0
  array_counter=sorted_diamond_array.size
  sorted_diamond_array.each do |number|
    sum=sum+number
  end

  if sum%total_person!=0
    puts "The Array Cannot be divided"

#else if sum/diamond_array_size!=total_person
 # puts "The Array Cannot be divided"
  else

       max_individual_diamond=sum/total_person
       max_individual_diamond
    sorted_diamond_array.each do|number|
        first_diamond=number
        if first_diamond==max_individual_diamond
          puts first_diamond
          sorted_diamond_array.delete(number)
          array_counter-=1

end
    end
       array_initial_index=0

          for array_index in 0..array_counter-1

            next_diamond=sorted_diamond_array[array_initial_index].to_i+sorted_diamond_array[array_index+1].to_i
            if next_diamond==max_individual_diamond
              puts [sorted_diamond_array[array_initial_index],sorted_diamond_array[array_index+1]].to_s
              sorted_diamond_array.delete(sorted_diamond_array[array_initial_index])
              sorted_diamond_array.delete(sorted_diamond_array[array_index+1])
              array_counter-=2




end



            end
          end

             if next_diamond>max_individual_diamond
                puts"The Array Cannot be furthur divided"
end

       if next_diamond<max_individual_diamond
                  furthur_diamond=sorted_diamond_array[array_index].to_i+sorted_diamond_array[array_index+1].to_i+sorted_diamond_array[array_index+1+1].to_i
                      if furthur_diamond==max_individual_diamond
                        puts [sorted_diamond_array[array_index],sorted_diamond_array[array_index+1],sorted_diamond_array[array_index+2]].to_s
                        sorted_diamond_array.delete(sorted_diamond_array[array_index])
                        sorted_diamond_array.delete(sorted_diamond_array[array_index+1])
                        sorted_diamond_array.delete(sorted_diamond_array[array_index+2])

                        array_counter-=3
                      end
                        if furthur_diamond>max_individual_diamond
                          puts"The Array Cannot be furthur divided"
                        end
                      end
                end






























