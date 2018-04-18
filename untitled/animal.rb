module Name
  def complete_name()
    animal=Animal.new()
    human=Human.new()
 puts animal.getName


  end
end


class Animal
  include Name
  @@name
  @@scientific_name
  def setName(name,scientificname)
    @name=name
    @scientific_name=scientificname
  end
def getName
  arr1=Array.new
  arr1.push(@name,@scientific_name)
  return arr1.to_a
end


end

class Human
  include Name
  @@first_name
  @@last_name
  @@scientific_name
  def setName(fname,lname,sname)
    @first_name=fname
    @last_name=lname
    @scientific_name=sname
  end
  def getName
    arr2=Array.new
    arr2.push(@first_name)
    arr2.push(@last_name)
    arr2.push(@scientific_name)
    return arr2.to_a
  end
end
human=Human.new
human.setName("ram","bahadur","Homosapiens")
human.complete_name