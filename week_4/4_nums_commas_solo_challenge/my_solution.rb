# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? 
# an integer 

# What is the output? (i.e. What should the code return?) 
# a string of the input integer with commas in the correct places.

# What are the steps needed to solve the problem?
# turn integer to string
# determine length of string
# if string less than 4, no commas needed
# else, every 3 chars (starting from the end of the string), add a comma 


# 2. Initial Solution

# def separate_comma(number_i)

# 	number_s = number_i.to_s
# 	len = number_s.length

# 	return number_s if len < 4

# 	count = len
# 	while count > 3
# 		number_s.insert(count-3, ',')
# 		count -=3
# 	end 
# 	return number_s

# end


# 3. Refactored Solution

def separate_comma(number_i)

	number_s = number_i.to_s
	len = number_s.length


	count = len
	while count > 3
		number_s.insert(count-3, ',')
		count -=3
	end 
	return number_s

end

# 4. Reflection 

# I really thought I was going to have more problems with this challenge,
# or at least that it would take longer than it did. I think I spent so long
# making my accountability groups that I thought all challenges would take 
# that long. 

# I am finding that I still have to look up a lot of syntax for Ruby, though 
# I am fine when it comes to thinking about the logic of a problem. Having 
# to look up the syntax made this challenge take longer than it "should" have
# though, so I am def. going to want to look up/take notes more often on it. 
# hopefully after this week, I will get back into the swing of things with 
# Ruby. That's how it seems to have worked for HTML/CSS and JS. 

# My origional strategy worked well. Though I realized that I didn't need the 
# special case for the number less than 4 digits long, that my method actually 
# took care of them itself.

# Looking at the learning competencies, I realize that I have some internal 
# prejudices. For instance, I would never use an until loop, I would always 
# just write it as a while loop. I think working in pairs will help break 
# me out of ruts like these. 







