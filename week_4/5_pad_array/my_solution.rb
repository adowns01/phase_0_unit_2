# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? an array 
# What is the output? (i.e. What should the code return?) an a
# What are the steps needed to solve the problem?


# 2. Initial Solution

# class Array 

# 	def pad! (wanted_length, padding)
# 		while wanted_length > length
# 			self.push(padding)
# 		end 
# 		return self
# 	end

# 	def pad (wanted_length, padding)
# 		self.clone.pad!(wanted_length, padding)
# 	end
# end

# puts a = [1,2,3]
# puts a.pad(8, 0)
# puts a

# 3. Refactored Solution

# I know it looks like I didn't refactor, but I had such a hard time getting
# this one to work, I went through a lot of drafts that didn't even compile. 
# So by the time I figured out the self.clone thing, I was very happy with the
# algorithm. 


class Array 

	def pad! (wanted_length, padding = nil)
		# as long as the length of the array is shorter then wanted
		# add one 'pad' to the end of the array
		while wanted_length > length
			self.push(padding)
		end 
		return self
	end


	def pad (wanted_length, padding = nil)
		self.clone.pad!(wanted_length, padding)
	end
end




# 4. Reflection 

# This was definetly the challenge I underestimated the most. It looked so
# simple! And logically I understood how to do it once I read it, but I had
# never written a class method like this before. What really tripped me up 
# was the self.clone.

# I still don't understand all the nuances of class methods. For instance, 
# I was trying to create another array, like I would in a normal method, 
# then I set that array equal to self. Then everytime I altered the new array
# self would change to! Not good for non-destructive arrays. 

# This is the first challenge where I really felt like I learned somethig. 
# The others I might've had to look up some syntax that I forgot, but I knew 
# what I was looking for. I have never done this before (There is a chance that 
# it was in codecademy and I have forgotten it, but either way, I don't 
# remember). 

# I look forward to learning more with the rest of the week! 












