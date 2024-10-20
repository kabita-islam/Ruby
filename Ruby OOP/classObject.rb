# 1.local variable-that are defined in a method
# 2.instance variable-(@) 
# 3.class variable - (@@) 
# 4.global variable - ($)  
# class name starts with uupercase,method name starts with lowercase .

class Book

    #constructor is used to set up the initial value

    #instance variable -> is a kind of variable that is used inside classes.

    def initialize(title,name,num)
        @title = title 
        @author_name = name 
        @num = num
    end


    #   Instance Method ->instance is another method of 'object'
    # def print
    #     puts "hi\n"
    # end


    def function
        puts "book1.num"
        # if(book1.num<3)
        #     puts "true\n"
        # end
        # else
        #     puts "false\n"
        # end
    end

book = Book.new
#book.print

#book1 = Book.new("Ruby on Rails", "author1","3")
# puts book1.title

book1.function