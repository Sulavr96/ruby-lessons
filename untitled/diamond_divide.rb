=begin
 class Person

#  def initialize name,hand
#    @name=name
#    @hand=hand
#  end
#   def hand
#     puts "#{@name} has #{@hand}"
#   end
# end
#
#
# diamond_array = [3,5,1,1,1,1,1,1,1]
# total_person = 3
# sorted_diamond_array = diamond_array.sort
# sum = sorted_diamond_array.sum
# people = {}
# person_array=[]
#
# if sum % total_person != 0
#   puts "The Array Cannot be divided"
# else
#   max_individual_diamond = sum / total_person
#   diamonds_in_hand = []
#
#   until sorted_diamond_array.empty? do
#     diamonds_in_hand.push sorted_diamond_array.first
#     sorted_diamond_array.delete_at 0
#     if diamonds_in_hand.sum == max_individual_diamond
#
#       people["Person #{people.length}:"]=diamonds_in_hand
#
#       person= Person.new("Person #{people.length}",diamonds_in_hand)
#       person_array.push(person)
#       # person.diamond_print
#
#       diamonds_in_hand = []
#     end
#     sorted_diamond_array.each_with_index do |picked_diamond, index|
#       if (diamonds_in_hand.sum + picked_diamond) == max_individual_diamond
#         people["Person#{people.length}:"]=[diamonds_in_hand, picked_diamond].flatten
#         person1=Person.new "Person#{people.length}:", [diamonds_in_hand, picked_diamond].flatten
#         person_array.push(person1)
#         # person1.diamond_print
#         sorted_diamond_array.delete_at index
#         diamonds_in_hand = []
#       end
#     end
#
#
#   end
# end
# person_array.each {|person| puts person.hand}
#
#
#
#
#
#
=end
