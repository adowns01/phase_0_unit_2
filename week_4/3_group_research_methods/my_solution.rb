# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2


# Create a my_array_modification_method that takes an array and number to be added to all internal numbers. (Because you can never have too many pets!) For example:

# my_array_modification_method(i_want_pets, 1) 
# #=> ["I", "want", 4, "pets", "but", "I", "only", "have", 3, ":(." ] 
# Then create a method that updates the ages in the hash. For Example:

# my_hash_modification_method(my_family_pets_ages, 2) 
# #=> {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}







def my_array_modification_method(source, thing_to_modify)
  len = source.length; # find the number of elements in the array
  # for each element in the array see if it is a string
  0.upto(len - 1) do |loc|
  	# if the element is NOT a string, add thing_to_modify to it
  	if source[loc].is_a?(String) === false
  		source[loc] += thing_to_modify
  	end
  end
  return source
end

  
def my_hash_modification_method(source, thing_to_modify)

	source.each {|name, age| source[name] += thing_to_modify}

	return source 
end



# Identify and describe the ruby method you implemented. 
# 
# name: my_array_modification_method (source, thing_to_modify)
# input: source = an array
# 		 thing_to_modify = a number
# function: all numbers in the array are increaed by thing_to_modify
# output: an array

# name: my_hash_modification_method(source, thing_to_modify)
# input: source = a hash
# 		 thing_to_modify = a number
# function: all hash values are increaed by thing_to_modify
# output: a hash


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# 
# 
# 
# 
# 