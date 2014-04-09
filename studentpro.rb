#declare students an empty array variable accessible through the entire file
@students=[]

#student_fixed_list avoids manual input of student data
# student_fixed_list = [{:name => "Adam",:cohort => :May},{:name => "Anthony",:cohort => :May},{:name => "Peter",:cohort => :May},
# 	{:name => "Robin",:cohort => :May},{:name => "Bethsheeba",:cohort => :Feb},{:name => "MarcusAnthony",:cohort => :Feb},
# 	{:name => "Sarah-Ann",:cohort => :Feb}]

#create a neat program header
def print_header
	puts "The students of my cohort at Maker's Academy"
	puts "-----------"
end

#now time to create our student data by prompting for names using gets
#now includes other student attributes of name, email and skype id
def input_students
	puts "Please enter the first name of the students(s)"
	#get the first name
	name = gets.chomp
	#while the name is not empty prompt for other info and repeat proccess
	while !name.empty? do
		#prompt for email
		# puts "Please enter the email of the students(s)"
		# email=gets.chomp
		# #prompt for skype_id
		# puts "Please enter the skype_id of the students(s)"
		# skype_id=gets.chomp
		# # add the student data hash to the array
		@students << {name: name, email: "email@gmail.com", skype_id: "skype_id"}
		puts "Now we have #{@students.length} students"
		# get another name from the user
		puts "Please enter the next name of the students(s), or hit enter to finish"		
		name = gets.chomp
	end
	# return the array of students
	save_students
	@students
end

	
def print_students_list
		i = 0
		@students.each do |element|
		puts "#{i += 1}. #{element[:name]}, #{element[:email]}, #{element[:skype_id]}"
		end
end


def print_footer
	puts "Overall, we have #{@students.length} great student(s)"
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list of students to students1.csv"
	puts "4. Load the list from students1.csv"
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
	#input students
	@students = input_students
	when "2"
	#show students
	show_students
	#saves to students1
	when "3"
	save_students 
	when "4"
	#loads students from students1
	load_students
	when "9"
	exit #will exit the program
	else 
	puts "I don't know what you mean, please try again"
	end
end

def interactive_menu
		# students = []
	loop do
		#1. print menu and ask user what to do
			print_menu
		#2. take user selection and run method process 
			process(gets.chomp)
	end
end

def save_students
	#open the file for writing
	file = File.open("students1.csv","a")
	#iterate over the array of students
	@students.each do |student|
		student_data = [student[:name],student[:email],student[:skype_id]]
		csv_line=student_data.join(",")
		file.puts csv_line 
	end
	file.close
end

def load_students
	file = File.open("students1.csv", "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		@students << {:name => name, :cohort => cohort.to_sym}
	end
	file.close
end


interactive_menu