# 1.local variable-that are defined in a method
# 2.instance variable-(@) 
# 3.class variable - (@@) 
# 4.global variable - ($)  
# class name starts with uupercase,method name starts with lowercase .

class Book

    #constructor is used to set up the initial value

    #instance variable -> is a kind of variable that is used inside classes.

    def initialize(title,name,edition)
        @title = title 
        @author_name = name 
        @edition = edition
    end

    def titleiInfo
        puts "The title of the book is #{@title}\n"
    end
    def authorInfo
        puts "The author is #{@author_name}\n"
    end
    def numInfo
        puts "The latest edition is #{@edition}\n"
    end


    #   Instance Method ->instance is another method of 'object'
    # def print
    #     puts "hi\n"
    # end


    def function
        puts "Ruby on Rials\n"
        # if(book1.num<3)
        #     puts "true\n"
        # end
        # else
        #     puts "false\n"
        # end
    end
end

puts "Enter the title name :"
title=gets

puts "Enter the author name :"
author_name=gets

puts "Enter the edition : "
edition=gets

#book = Book.new("ruby","author1","32013")
book = Book.new(title,author_name,edition)
book.titleiInfo
book.authorInfo
book.numInfo
#book.print

#book1 = Book.new("Ruby on Rails", "author1","3")
# puts book1.title

#book.function


