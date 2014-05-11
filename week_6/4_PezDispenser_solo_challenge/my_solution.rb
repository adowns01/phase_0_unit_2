# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

# create pez dispenser class
# create an array that would "hold" the pez
# create a count method
# create a eat method
# create an add method 
# create a view_pez method



# 3. Initial Solution

# class PezDispenser
#  	@@SIZE = 12 # how many pez the dispenser can hold

# 	def initialize (flavors)
# 		@pez = [] # creates an empty array of pez
# 		@@SIZE.times{@pez.push(flavors.sample)}
# 	end

# 	def count
# 		return @pez.length()
# 	end

# 	def eat
# 		return @pez.pop()
# 	end

# 	def add (item)
# 		@pez.push(item) if !full?()
# 	end

# 	def full?
# 		return false if @pez.length < @@SIZE
# 		return true
# 	end

# 	def view
# 		puts @pez
# 	end

 
# end
 


# 4. Refactored Solution

class PezDispenser
 	@@SIZE = 12 # how many pez the dispenser can hold

	def initialize (flavors)
		@pez = [] # creates an empty array of pez
		# creates a random arry of size 12 out of the flavors provided
		@@SIZE.times{@pez.push(flavors.sample)}
	end

	def pez_count
		return @pez.length()
	end

	def get_pez
		# if the despenser isn't empty, take one
		return @pez.pop() if (@pez.length > 0)
	end

	def add_pez(item)
		# if the despenser isn't full, add it
		@pez.push(item) if (@pez.length < @@SIZE) 
	end

	def see_all_pez
		return @pez
	end

 
end




# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!" 
assert {super_mario.pez_count() == 12} 
# puts "Here's a look inside the dispenser:"  
# puts super_mario.see_all_pez
assert {super_mario.see_all_pez().kind_of?(Array)} 
# puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
# puts "Now you have #{super_mario.pez_count} pez!"
assert {super_mario.pez_count() == 12} # BECAUSE YOU CAN'T ADD AN ITEM IF IT IS FULL
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 