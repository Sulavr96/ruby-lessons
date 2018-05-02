class Test
  diamond_array = [1, 1, 2, 2, 2, 4]
  sorted_diamond_array = diamond_array.sort
  people = []
  total_person = 3
  sum = sorted_diamond_array.sum

  if sum % total_person != 0
    puts "The Array Cannot be divided"
  else

    hand_capacity = 1
    max_individual_diamond = sum / total_person
    max_individual_diamond
    diamonds_in_hand = []
    while (hand_capacity < sorted_diamond_array.length) do

      sorted_diamond_array.each do |number|
        diamonds_in_hand.push(number)
        sorted_diamond_array[diamonds_in_hand.length...sorted_diamond_array.length].each_with_index do |picked_diamond, index|
          if (diamonds_in_hand.sum == max_individual_diamond)
            people.push(diamonds_in_hand)
            #   remove diamonds in hand from sorted array

          else
            diamonds_in_hand.push(picked_diamond)
            if (diamonds_in_hand.sum < max_individual_diamond)
              diamonds_in_hand.pop(picked_diamond)
            else
              #   cannot divide case
            end
          end

          if (index == sorted_diamond_array.length - 1)
            hand_capacity += 1
          end

        end

      end
    end

  end
end













