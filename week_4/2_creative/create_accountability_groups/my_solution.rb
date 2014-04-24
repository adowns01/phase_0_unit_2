# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: An array of names
# Output: A hash of names (key) with an array of their groups (value)
# Steps: Determine length of array (thus the number of people) and intiger
# divide by 4 (the ideal size of groups) to determine the number of groups.
# I will deal with any extra people by creating up to 3 groups of 5.
# Then determine the groups people will be in (let length = n)
	# intially count off everyone 1 through n  that is their first a.g.
	# for the 2nd a.g., the first 1-n will stay in the same group #
		# the second 1-n ppl will +1 to their group.
		# the 3rd 1-n ppl will +2 to their group.
		# the 4th 1-n people will +3 to their group.
		# this way people interact with as many new people as possible.
	# Repeat this method again for the 3rd a.g.


# 3. Initial Solution

# def create_accountability_groups (listNames)

# 	len = listNames.length
# 	num_groups = len/4

# 	accountability_groups = {}

# 	counter = 0
# 	0.upto(3) do |add|
# 		1.upto(num_groups) do |group|
		
# 				name = listNames[counter]
# 				accountability_groups[name] = [group, group +add, group + add*2]
# 				counter += 1;
# 		end 
# 	end


# 	puts accountability_groups


# end

# 4. Refactored Solution

def create_accountability_groups (listNames)

	len = listNames.length
	num_groups = len/4  # -1 because there is a zero-th group

	accountability_groups = {} # create the hash, but it is empty right now

	counter = 0 # used to iterate through all people in list
	0.upto(3) do |add| # add is the amount added to each persons group to offset them
		0.upto(num_groups-1) do |group| #this gives each person their first a.group
				
				name = listNames[counter]			
				
				group2 = (group +add)% num_groups
				group3 = (group + add*2)% num_groups

				accountability_groups[name] = [group, group2 , group3] # assign the groups 

				counter += 1
		end 
	end

	#now for the rest that are at the end that will be odd
	if (counter< len)
		group = 0 
		counter.upto(len-1) do |counter|
			accountability_groups[listNames[counter]] = [group,group,group]
			group += 1
		end

	end


	 #accountability_groups.each {|student, groups| puts "#{student}: #{groups}"} # list groups 

	return accountability_groups

end

students = ["Adam Hardy", "Adrian Soghoian", "jay Bir Singh", "Alec Ashford", "Alex Mazur", 
            "Alexis Ernst", "Amelia Downs", "Amol Borcar", "Andrew C. Koines, Jr.", "Andrew Principe", 
            "Armen Vartan", "Austin Bourdier", "Ben Brostoff", "Brendan Susens-Jackson", "Brennon Williams", 
            "Bridgette L. Salcido", "Britney Van Valkenburg", "Celeen Rusk", "Chad Everett Howard", 
            "Christian Moon", "Colin Trent", "Dakota Cousineau", "Daniel Kim", "Danny Glover", 
            "Gabriel Garrett", "Gregory Piccolo", "Gregory White", "Hing Huynh", "Ian Shuff", 
            "Jake Wayne", "Jeff Kynaston", "Jennifer Oseitutu", "Jeuel Wilkerson", "John Thomas Mulvahill", 
            "Joseph Rosztoczy", "Josh Jeong", "Katie Reiner", "Kendall Carey", "Kenneth Mendonca", 
            "Kirstin Jarchow", "Kris Shanks", "Lienha Carleton", "Martin A. Lear", "Matias Andres Meneses", 
            "Matthew Hein", "Matthew Kuzio", "Matthieu Gavaudan", "Michael Drew Teter", "Michael Ginalick", 
            "Neel Shah", "Nick Giovacchini", "Osama Zayyad", "Phillip Crawford", "Phillip Smit", "RJ Arena", 
            "Rj Bernaldo", "Ronald Ishak", "Ryan Stack", "Scott Jason", "Sherwood Callaway", 
            "Siddharth Patel", "Simon Gondeck", "Spencer Olson", "Stella Kim", "Stuart Pearlman", 
            "Timoor Kurdi", "Timothy Howard", "Valentine Sverdlov", "Vivek M George", "Yariv Kirschner", 
            "Zach Pflederer", "antonio perez"]


test = create_accountability_groups(students)






# 1. DRIVER TESTS GO BELOW THIS LINE

# Each person should be in the hash

test1 = true
students.each  do |name|
	if test[name] === nil
		test1 = false
	end
end
puts test1

# Each person should have three accountability groups 

test2 = true
students.each  do |name|
	if test[name].length != 3
		test2 = false
	end
end
puts test2

# All accountability groups should have 4 OR 5 people
# there should be max 3 groups with 5 people

def test_number_people(which_group, students, test)
	
	# first create an array with the same # of elements as accout.groups
	# set each element to 0
	num_groups = students.length/4 -1
	population = Array.new(num_groups +1, 0);

	# go through each student's accountability group (either 0,1,2)
	# and add 1 to that group in the array, thus keeping a tally 
	# of the number of people in each group
	test3 = true
	students.each  do |name|
		group = test[name][which_group]
		population[group] += 1
	end

	# delete all of the groups with 4 people in it
	population.delete(4)

	# the max length should be 3 (3 groups with 5 ppl)
	if population.length > 3
		test3 = false
	end	

	# delete all the groups with 5
	population.delete(5)

	# if any groups remain, there is an error
	if population != []
		test3 = false
	end
	return test3
end

puts test_number_people(0, students, test)
puts test_number_people(1, students, test)
puts test_number_people(2, students, test)


# 5. Reflection 

# This is the first time I actually changed something from my pseudocode. Maybe this is a
# sign that I didn't pseudocode well enough? I don't usually pseudocode enough when I am 
# by myself. The solution itself is not as dry as I wish it was. I wrote twice how to handle
# things, once for the normal students, then once again for the overflow (up to 3 students). 
# though each case was slightly different, I wish I had found a way to combine them. 

# Initially I thought my code worked and then I realalized that there are 72 people in our 
# combined cohorts. 72 is divisible by 4 so I wasn't testing the overflow students. I had to go
# back and add some special clauses for them. 

# This exercise made me appreciate how difficult it is to write good test code. There are so
# many things to test for. And I love it when tests put out which test is wrong and why, minimizing 
# error messages, but it would take so long! 

# However, writing the tests before I wrote the code made me decide on the structure I wanted my 
# solution to take, which helped with pseudo coding. 

# Overall, am very happy with my solution. I tried to think of a way where people wouldn't overlap
# with their old accountability groups, thus meeting a many new people as possible. However, I did
# just make a hard and fast rule for the overflow people. Those people essentially mimics the first 
# students in the list. Thus those (up to 3) pairs would be with each other the whole time.

# Yay, Ruby!









