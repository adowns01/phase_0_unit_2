# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# The input is an array of numbers of unknown length.

# What is the output? (i.e. What should the code return?)
# The output is a character representing the letter grade

# What are the steps needed to solve the problem?
# Sum the numbers in the array, then divide the sum by the length
# of the array. This will give the average grade. 
# Then convert this number into a letter grade with a switch.


# 2. Initial Solution


# def get_grade(listNumbers)

# 	sum = 0.0
# 	listNumbers.each { |num| sum += num}

# 	grade = sum/listNumbers.length

# 	case 
# 	when grade < 60
# 		return "F"
# 	when grade < 70
# 		return "D"
# 	when grade < 80
# 		return "C"
# 	when grade < 90
# 		return "B"
# 	when grade <= 100
# 		return "A"
# 	end
# end




# 3. Refactored Solution


def average(listNumbers)
	sum = 0.0
	listNumbers.each { |num| sum += num}

	return sum/listNumbers.length
end 

def get_grade(listNumbers)

	grade = average(listNumbers)

	case 
	when grade < 60
		return "F"
	when grade < 70
		return "D"
	when grade < 80
		return "C"
	when grade < 90
		return "B"
	when grade <= 100
		return "A"
	end
end

# 4. Reflection 

# This problem went much faster for me, even though it was supposed
# to be harder. I was happy that I got to use my code from the last part.
# Though I don't feel very DRY because I had to copy and paste it. I wish
# I knew how to get it from different files/directories. 

# I am looking forward to coding more with ruby!


