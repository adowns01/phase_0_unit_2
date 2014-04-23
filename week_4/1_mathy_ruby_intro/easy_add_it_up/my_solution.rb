# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# For total: 
# What is the input?
# The input is an array of unknown length that contains numbers

# What is the output? (i.e. What should the code return?)
# The output should be one number- the sum of the numbers in the array

# What are the steps needed to solve the problem?
# Should define a variable 'total'. Then go through the elements in the array 
# and add them to the total one by one. 


# 2. Initial Solution

# def total (listNumbers)
# 	sum = 0
# 	listNumbers.each do |num|
# 		sum += num
# 	end 
# 	return sum
# end 




# 3. Refactored Solution

def total (listNumbers)
	sum = 0
	listNumbers.each { |num| sum += num}
	return sum
end 

# all reflection at bottom 

# 1. Pseudocode

# What is the input?
# An array of unknown length that contains strings.

# What is the output? (i.e. What should the code return?)
# One string that is a sentence of all the words in the array.

# What are the steps needed to solve the problem?
# Define a variable "sentence". Go through the elements in the array and
# add them followed by a space so the variable 'sentence'. Then capitalize 
# the first letter. Then change the last character in 'sentence' from a space
# to a period.


# 2. Initial Solution

# def sentence_maker(sentenceArray)
# 	sentence = ""
# 	sentenceArray.each { |word| sentence += (word.to_s + " ")}
	
# 	sentence.capitalize!
# 	sentence[sentence.length-1] = "."

# 	return sentence
# end 




# 3. Refactored Solution

# I didn't change my code, because I initally had some problems
# with syntax and changed it in the origional code to make it run
# correcrly. For instance, I added the .to_s so all words would 
# be read as strings and I figured out that if I did sentence[0]
# it would give me the ascii code, not the character.



# 4. Reflection 


# I'm glad I'm starting out easy to get back into Ruby. The most
# frustraiting part was just trying to remember the syntax. The 
# language I know best is C++, so I'm trying to make an effort 
# to not code the way I do in C++, but to take advantage of all the 
# built in advantages to ruby. 

# But sometimes I get carried away. For instance I thought there was
# a .sum method. And it took me awhile to realize that my error was 
# because there was no such method (I suppose that wouldve made this
# part too easy).




