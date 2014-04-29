# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 
# an array

# Output: 
# .sides returns the number of element in the labels array 
# (thus, number of sides)
# .roll returns a random element from the array

# Steps:
# determine the length of the array 
# find a random number (n) between 1 and the length of the array
# return the nth element in the array


# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	@length = labels.length
#   	raise ArgumentError.new("Error") if (@length == 0)
#     @labels = labels;
#   end

#   def sides
#   	return @length
#   end

#   def roll
#   	return @labels[rand(@length)]
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(labels)
  	@sides = labels.length
  	raise ArgumentError.new("Error") if (@sides == 0)
    @labels = labels;
  end

  def sides
  	return @sides
  end

  def roll
  	return @labels[rand(@sides)]
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

# raises argument error if list is empty 
Die.new([]) rescue 
puts $!.message == "Error"

# die#sides returns number of sides given at initiation

puts Die.new([1,2,3,4,5]).sides == 5

# roll returns every possible letter for sufficiently high # of rolls
# This array will represent all of the sides of the die
bool_array = Array.new(100, false)

# Created a die with the numbers 1-99 on it
test_array = (0..99).to_a
test_die = Die.new(test_array)

# roll the die 1000 times
# each time a number is rolled
# that spot on bool_array is marked true
1000.times{
	bool_array[test_die.roll] = true
}

# go through bool_array and make sure all are marked true
test_result = true
bool_array.each do |x|
	if x == false
		test_result = false
		break
	end 
end

puts test_result


# 5. Reflection 

# I like that this challenge built on the last one and I like this concept. 
# Phase 0 challenges have done a good job of using fun challenges that I 
# can see the actaul value in rather than just straight teaching code 

# I really like that you don't teach us methods, you just give us problems
# and if I need help I look it up, just like I would in the real world. Doing 
# it this way makes me feel very confident in my self.

# What I like most about the more recent challenges is learning how to write 
# test code. There are so many things to test for! Also these past 2 challenges
# have introduced me to ArgumentError which I had never heard of before. 
