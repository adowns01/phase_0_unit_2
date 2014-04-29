# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 
# number of sides of the die

# Output: 
# .sides should output the correct nuber of sides 
# .roll should return a random number between 1 and the number of 
# sides (includive)

# Steps: 
# create a die 
# save the number of sides 
# for .sides, return this saved number
# create an exception for decimal numbers
# create a random number generator 
# for .roll, call the random number generator 


# 3. Initial Solution

# class Die
#   def initialize(sides)
#     raise ArgumentError if (sides < 1)
#     @sides = sides;
#   end
  
#   def sides
#     return @sides
#   end
  
#   def roll
#     1 + rand(@sides)
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Error") if ((sides < 1) || ((sides % 1) != 0))
    @sides = sides;
  end
  
  def sides
    return @sides
  end
  
  def roll
    1 + rand(@sides)
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE


#if sides <1, ArgumentError should be raised

Die.new(0) rescue 
puts $!.message == "Error"

#if sides is not an intiger, ArgumentError should be raised

Die.new(1.6) rescue 
puts $!.message == "Error"

#die should return correct number of sides
puts Die.new(2).sides == 2




# 5. Reflection 


# I studied C++ in school so the concept of classes is not a new one to me. 
# So this was more of a ruby sytax review for me in terms of classes. However
# what I really learned was how to check for an argument error. That part of the
# driver tests is the part of this challenge that took me the longest.

# Now that I know how, I'm sure I'll be using it a lot from now on. My first 
# attempt was to copy and paste from the 1_die_spec.rb, with hopes that I could 
# edit parts to test for the things I wanted, but I couldn't get it to work. 
# I really wish I understood the rspec code more. 

# I am happy to be delving more into Ruby. 

