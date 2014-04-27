# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked
#    What I learned from this solution

# I chose this solution first because it is the most different 
# from mine. The biggest thing I liked is being reminded of 
# other syntax. I think I easily fall into syntax ruts.
# For exaple, even though I know what .map or .times
# do, they don't initially come to my mind. 
# Copy solution here:


# class Array

# 	def pad(min_length, pad_value = nil)
# 		array = self.map { |x| x }
# 		length = array.length
# 		if length >= min_length
# 			return array
# 		else
# 			(min_length-length).times { array.push(pad_value) }
# 			return array
# 		end
# 	end

# 	def pad!(min_length, pad_value = nil)
# 		length = self.length
# 		if length >= min_length
# 			return self
# 		else
# 			(min_length-length).times {	self.push(pad_value) }
# 			return self
# 		end
# 	end
# end


# 2. Second Person's solution I liked
#    What I learned from this solution
# The hardest part for me was not knowing about .dup or .clone.
# Before seeing this code I had never seen .dup before. 
# Though it is similar to the last example, it also used 
# methods, I don't typically use.
# Copy solution here:

# class Array
# 	def pad(minLength,padValue=nil)
# 		newArray=self.dup
# 		(minLength-newArray.length).times{
# 			newArray.push(padValue)
# 		}
# 		return newArray
# 	end

# 	def pad!(minLength,padValue=nil)
# 		(minLength-self.length).times{
# 			self.push(padValue)
# 		}
# 		return self
# 	end
# end

# 3. My original solution:
# class Array 

# 	def pad! (wanted_length, padding = nil)
# 		# as long as the length of the array is shorter then wanted
# 		# add one 'pad' to the end of the array
# 		while wanted_length > length
# 			self.push(padding)
# 		end 
# 		return self
# 	end


# 	def pad (wanted_length, padding = nil)
# 		self.clone.pad!(wanted_length, padding)
# 	end
# end


# 4. My refactored solution:

class Array 

	def pad! (wanted_length, padding = nil)
		add = wanted_length - length
		(add).times {self.push(padding)} if add >0 
		return self
	end


	def pad (wanted_length, padding = nil)
		self.clone.pad!(wanted_length, padding)
	end
end

# 5. Reflection

# It is interesting looking at other people's code. This function
# was basic enough, that it was pretty easy to decipher the algoithms 
# that other people used. 

# Like I said above, I think one of my weaknessess is being stuck in a 
# syntax rut. There are just certain functions I 'like' more than others. 
# In my mind, I always think of 'for' functions, then I get upset that ruby
# doesn't have a for function, but I forget that .times works very similarly. 
# I enjoyed this challenge because I hope by coding with other people, 
# I will be exposed to more methods and more ideas. 

# All of the new concepts I learned are outlined above :)








