module Name
  def complete_name
    if self.class.name.eql?"Animal"

      puts "#{name}(#{scientific_name})"
    else
      puts "#{first_name} #{last_name}(#{scientific_name})"
    end


  end
end
class Animal
  include Name
  attr_accessor :name,:scientific_name

  def initialize name, scientific_name
    @name = name
    @scientific_name = scientific_name

  end
end

class Human
  include Name
           attr_accessor :first_name,:last_name,:scientific_name
  def initialize first_name, last_name, scientific_name
    @first_name = first_name
    @last_name = last_name
    @scientific_name = scientific_name
  end
end

animal = Animal.new("Frog", "RanaTigrina")
human = Human.new("Ram", "Bahadur", "Homosapiens")
animal.complete_name
human.complete_name


