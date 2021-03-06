# def input_csv
# 	puts "Here is a list of the names and details of the March cohort"
# 	file = File.new("students101csv.csv") 
# 	puts file
# end


def input_students
	puts "Please enter the name of student"
	puts "To finish, just hit return twice"
	students =[]
	name = gets.chomp
	puts "Please enter the cohort"
	cohort = gets.chomp
	cohort_array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

	while !name.empty? do
		cohort_exists = cohort_array.select {|month| month==cohort}
		if cohort.empty? || cohort_exists.empty?
			cohort = "March"
		end
		
		cohort = cohort.to_sym
		students << {:name => name, :cohort => cohort, :gender => :male}
		if students.length > 1
			puts "Now we have #{students.length} students"
		else 
			puts "Now we have #{students.length} student"
		end
		puts "Please enter the name of the student"
		name = gets.chomp
		puts "Please enter the cohort"
		cohort = gets.chomp

	end
	students
end


def print_header 
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

def print(listofstudents)
	listofstudents.each_with_index do |student, index|
		puts "#{index + 1}. #{student[:name]} #{student[:cohort]} cohort who is a #{student[:gender]}"
	end
end

# def select_students(students)
# 	students.select{|student| student[:name].start_with? ("A")}
# end

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

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end	

# name = "Scott"
# puts name.center(20)




students = input_students()
print_header
print(students)
print_footer(students)