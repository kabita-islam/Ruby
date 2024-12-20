#total result - 5 courses
#average result
#grade

class Result 

    @@totalMarks
    @@avgMarks
    @@totalObtainedMarks
    @@avgObtainedMarks
  def initialize(course1,course2,course3,course4,course5)
    @course1 = course1
    @course2 = course2
    @course3 = course3
    @course4 = course4
    @course5 = course5
  end

  def totalMarks
    @@totalMarks = @course1+@course2+@course3+@course4+@course5
    return @@totalMarks 
  end

  def averageMarks
     @@avgMarks = @@totalMarks / 5
    return @@avgMarks
  end

  def failStatus
    if @course1<33||@course2<33 || @course3<33||@course4<33 || @course5<33
      return true
    end
  end

  def marksValidation
    if @course1<0||@course1>100 || @course2<0||@course2>100 || @course3<0||@course3>100 || @course4<0||@course4>100 || @course5<0||@course5>100
      return true
    end
  end

  def grade
    case @@avgMarks
    when 80..100
      puts "A+\n"
    when 70..79
      puts "A\n"
    when 60..69
      puts "A-\n"
    when 50..59
      puts "B\n"
    when 40..49
      puts "C\n"
    when 33..39
      puts "D\n"
    else
      puts "F\n"   
    end
  end

  def studentResult
    if failStatus
      puts "Failed\n"
    elsif marksValidation
      puts "Marks Invalid\n"
    else
      @@totalObtainedMarks = totalMarks
      @@avgObtainedMarks = averageMarks
      puts "Total Marks = #{@@totalObtainedMarks}\n"
      puts "Average Marks = #{@@avgObtainedMarks}\n"
      grade
    end
  end

end

puts "Enter the marks for course1 : "
course1= gets.to_i

puts "Enter the marks for course2 : "
course2= gets.to_i

puts "Enter the marks for course3 : "
course3= gets.to_i

puts "Enter the marks for course4 : "
course4= gets.to_i

puts "Enter the marks for course5 : "
course5= gets.to_i


marks= Result.new(course1,course2,course3,course4,course5)
marks.studentResult
