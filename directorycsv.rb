#def input_students
#	puts "Please enter the names of students"
#	puts "To finish, just hit return twice"
#	students =[]
#	name = gets.chomp
#	while !name.empty? do
#		students << {:name => name, :cohort => :March, :gender => :male}
#			puts "Now we have #{students.length} students"
#			name = gets.chomp
#		end
#	students
#end

def input_csv
	puts "Here is a list of the names and details of the March cohort"
	file = File.new("students101csv.csv") 
	puts file.read
end


def print_header 
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

#def print(listofstudents)
#	listofstudents.each_with_index do |student, index|
#		puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort who is a #{student[:gender]}"
#	end
#end

#def select_students(students)
#	students.select{|student| student[:name].start_with? ("A")}
#end

#def twelve_characters(namelength)
#	namelength.select{|student| student[:name].length <12}
#end


#def print_using_until(printusinguntil)
#	count = 0
#	while count < printusinguntil.length 
#		student=printusinguntil[count]
#		puts "#{count + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
#		count = count + 1
#	end
#end

#def print_footer(names)
#	puts "Overall, we have #{names.length} great students"
#end	


#students = input_students
#print_header
#print(students)
#print_footer(students)
input_csv