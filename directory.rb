require 'io/console'

class String
    def middle
    height, width = $stdin.winsize
    self.center(width)
  end
end



def print_header
  puts "The students of my cohort at Makers Academy".middle
  puts "-------------".middle
end

def print(students)
  students.map 
  students.each do |student|
    student.map do |k, v|
     if v == "December"
    
    puts " #{student[:name]}, #{student[:hobby]}, #{student[:age]} (#{student[:cohort]} cohort)".middle
  end
  end
  end
end

def print_cohort
students.map

end
def print_footer(names)    
  puts "Overall, we have #{names.length} great students"
end

def input_students
  puts "Please enter the names, hobbies, age and height of the students"
  puts "To finish, just hit return twice"
  puts "name:"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
 while !name.empty? do 
  puts "cohort: "
  cohort = gets.chop
  puts "Hobby: "
  hobby = gets.chop
  puts "Age: "
  age = gets.chop
  puts "Height: "
  height = gets.chomp  
    # add the student hash to the array
    students << {:name => name, :cohort => cohort, :hobby => hobby, :age => age, :height => height}    
     if students.length == 1 
      puts "Now we have #{students.length} student"
    else puts "Now we have #{students.length} students"
    end

    # get another name from the user
    puts "name: "
    name = gets.chomp
  end
  # return the array of students
  students
end

students = input_students
print_header
print(students)
print_footer(students)