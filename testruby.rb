student_list = ["colin", "jack", "scott", "alex"]

def select_stidents(students)
	students.select{|student| student.start_with? ("s")}
end


def print_students(students)
	students.each_with_index { |student, index| puts "#{index + 1}.   #{student}" }
end

print_students(select_stidents(student_list))

