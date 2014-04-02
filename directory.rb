#first, we print the list of students
students = [
["Steve Musgrave", :March],
["Sroop Sunar", :March],
["Colin Marshall", :March],
["Josh Fail-Brown", :March],
["Louise Lai", :March],
["Robin Doble", :March],
["Alex Wong", :March],
["Scott Dimmock", :March],
["Muhanad Al-Rubaiee", :March],
["Shelley Hope", :March],
["Will Hall", :March],
["Oliver Delevingne", :March],
["Nico", :March],
["Apostolis", :March],
["Stefania", :March],
["Robert Leon", :March],
["Emma Williams", :March],
["Joey Wolf", :March],
["Julie Walker", :March]
]

def print_header
puts "The students of my cohort at Makers Academy"
puts "-----------"
end

def print(students)
	students.each do |student|
		puts "#{student[0]} (#{student[1]} cohort)"
	end
end

def print_footer(names)
puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)
