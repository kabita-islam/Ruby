# class User 

#   def initialize(name)
#     @name = name
#   end


# end

# user1 = User.new("aaa")
# user2 = User.new("bbb")

# puts user1
# puts user2


# class User
#   $var=10
#   def initialize
#     @name="ruby"
#   end
#   def num(nm)
#     @number=nm
#   end
#   def increment
#     @number+=1
#   end
#   def printDetails
#     puts "the number is #{@number}"
#     # puts "The name is #{@name}"
#   end
# end

# obj1=User.new
# obj1.num(4)
# obj1.increment
# obj1.printDetails
# puts "#{$var}"


class User
  def initialize
    puts "Constructor"
  end

  def run
    puts "user class"
  end

  def add a=2,b=5
    puts a+b
  end
end

class Seller<User
  def run
    super 
    # puts "Seller class"
  end

end

sellerObj=Seller.new

sellerObj.run