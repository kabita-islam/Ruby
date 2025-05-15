#  / @-->instance variable, @@-->class variable /



class Human
  def evole
    puts "aaaaaaaaaa"
  end
end

class Person < Human
  def initialize(id,name,age)   #constructor
    @@personCount =0   #class variable
    @id = id      #instance variable
    @name = name   
    @age = age
  end

  def intro
    puts "My name is #{@name} and my age is #{@age}"
    @@personCount+=1
  end

  def self.personCount
    return @@personCount
  end

end

#create a person
 p1 = Person.new(1,"aaa",10)
# p2 = Person.new(2,"bbb",12)
# p1.intro  #call the class
# p2.intro
# puts Person.personCount

a1=p1.evole
