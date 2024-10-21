def marks
  num=gets.to_i
  return num
end

$course1= marks
$course2= marks
$course3= marks
$course4= marks
$course5= marks


def totalMarks
  totalMarks = $course1 + $course2 + $course3 + $course4 + $course5
  return totalMarks
end
$totalObtainedMarks = totalMarks

def avgMarks
   averageMarks=$totalObtainedMarks / 5
   return averageMarks
end
$avgObtainedMarks = avgMarks

def failStatus
  if($course1<33 || $course2<33 || $course3<33 || $course4<33 || $course5<33)
    #puts "failed\n"
    return true
  else
    return false
  end
end

def marksValidation
  if(($course1<0 && $course1>100) || ($course2<0 && $course2>100)|| 
    ($course3<0 && $course3>100)|| ($course4<0 && $course4>100)|| 
    ($course5<0 && $course5>100))
    #puts "Invalid\n"
    return true
  else
    return false
  end
end


def studentResult
  if failStatus || marksValidation
    if failStatus
      puts "Failed\n"
    elsif marksValidation
      puts "Marks Invalid\n"
    end
  else
    grade
  end
end


def grade

  puts "Total Marks = #{$totalObtainedMarks}"
  puts "Average Marks = #{$avgObtainedMarks}"

  case $avgObtainedMarks
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

studentResult