
def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again."
  end
end




def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def input_students
  puts "To finish, just hit return twice"
  # create an empty array
  @students = []
  # get the first name
  # while the name is not empty, repeat this code
  while true do
    # add the student hash to the array
    puts "Please enter the names of the students"
    name = gets.chomp
    if name.empty?
      break
    end
    @students << {name: name, cohort: :november}
    if @students.count == 1
      puts "Now we have #{@students.count} student"
    else
      puts "Now we have #{@students.count} students"
    end
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  if @students.count == 1
    puts "We have #{@students.count} great student"
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

#nothing happens until we call the methods
interactive_menu
