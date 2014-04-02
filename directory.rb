#first, we print the list of students
students = [
"Steve Musgrave",
"Sroop Sunar",
"Colin Marshall",
"Josh Fail-Brown",
"Louise Lai",
"Robin Doble",
"Alex Wong",
"Scott Dimmock",
"Muhanad Al-Rubaiee",
"Shelley Hope",
"Will Hall",
"Oliver Delevingne",
"Nico",
"Apostolis",
"Stefania",
"Robert Leon",
"Emma Williams",
"Joey Wolf",
"Julie Walker"
]

def print_header
puts "The students of my cohort at Makers Academy"
puts "-----------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)
