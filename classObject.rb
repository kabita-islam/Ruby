 / @-->instance variable, @@-->class variable /


class Person
  def initialize(id,name,age)   #constructor
    @@personCount =0
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
p2 = Person.new(2,"bbb",12)
#p1.intro  #call the class
puts Person.personCount