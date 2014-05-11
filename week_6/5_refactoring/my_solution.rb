# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.



# Original Solution

# class CreditCard

#   def initialize(card_number)
#     @card_number = card_number
#     clean_card_number()
#   end

#   def check_card()
#     # first double every other number in the array
#     double_array = double_evens()
#     # then split the double digit numbers into single digits
#     single_digit_array = split_double_digits(double_array)
#     # then add up all of the single digit numbers
#     sum = sum_array(single_digit_array)
#     # then see if it is divisible by 10
#     return divisible_by_10?(sum)
  
#   end
  
#   private 

#   # This function takes the cc# as an int or as a string
#   # it cleans it by taking out spaces if there are any 
#   # then it determines if it is valid if there are 16 
#   # number or not
#   def clean_card_number()
#   	@card_number = @card_number.to_s.gsub(/\s+/, "") 
#     raise ArgumentError.new("Should be 16 numbers") if @card_number.length != 16
#   end
  
#   # Input: the cc# as a string
#   # Output: the cc# as an int array
#   def convert_to_int_array(card_string)
#     card_int_array = []
#     len = card_string.length

#     len.times {|i| card_int_array.push(card_string[i].to_i) }

#     return card_int_array
#   end
  
#   # input: array of intigers
#   # output: array of intigers with all the even elements doubled 
#   def double_evens()
#     int_array = convert_to_int_array(@card_number)

#     16.times do |i|
#         (int_array[i] *= 2) if (i % 2 == 0)
#     end  
#     return int_array
#   end
  
#   # input: an array of intigers
#   # output: an array of single digit intigers
#   def split_double_digits(int_array)
#     card_string = convert_to_string(int_array)
#     return convert_to_num(card_string)
#   end

#   # input: array of intigers (some of which are double digits)
#   # output: string of array contents 
#   def convert_to_string(card_array)
#     card_string = ""
#     16.times {|i| card_string += card_array[i].to_s}
#     return card_string
#   end
  
#   # input: string of intigers 
#   # output: array of intigers (all single digit)
#   def convert_to_num(card_string)
#     len = card_string.length 
#     card_int = []
#     len.times {|i| card_int.push(card_string[i].to_i)}
#     return card_int
#   end
  
#   # input: array of single digit intigers 
#   # output: sum of all elements in array
#   def sum_array(final_number)
#     sum = 0
#     final_number.each {|x| sum += x}
#     return sum
#   end 
  
#   # input: an intiger 
#   # output: boolian depending if it is divisible by 10 or not
#   def divisible_by_10?(sum)
#     return (sum % 10 == 0)
#   end

# end



# Refactored Solution

class CreditCard

  def initialize(card_number)
    @card_number = card_number
    clean_card_number()
  end

  def check_card()
    # first double every other number in the array
    double_array = double_evens()
    # then split the double digit numbers into single digits
    single_digit_array = split_double_digits(double_array)
    # then add up all of the single digit numbers
    sum = sum_array(single_digit_array)
    # then see if it is divisible by 10
    return divisible_by_10?(sum)
  
  end
  
  private 

  # This function takes the cc# as an int or as a string
  # it cleans it by taking out spaces if there are any 
  # then it determines if it is valid if there are 16 
  # number or not
  def clean_card_number()
  	@card_number = @card_number.to_s.gsub(/\s+/, "") 
    raise ArgumentError.new("Should be 16 numbers") if @card_number.length != 16
  end

  
  # input: array of intigers
  # output: array of intigers with all the even elements doubled 
  def double_evens()
  	#convert string to array of ints
    int_array = convert_to_num(@card_number)

    # double every other number
   	16.times{|i| (int_array[i] *= 2) if (i % 2 == 0)}

    return int_array
  end
  
  # input: an array of intigers
  # output: an array of single digit intigers
  def split_double_digits(int_array)
    card_string = convert_to_string(int_array)
    return convert_to_num(card_string)
  end

  # input: array of intigers (some of which are double digits)
  # output: string of array contents 
  def convert_to_string(card_array)
    return card_array.map{|i| i.to_s}.join("")
  end
  
  # input: string of intigers 
  # output: array of intigers (all single digit)
  def convert_to_num(card_string)
  	return card_string.split("").map{|i| i.to_i}
  end
  
  # input: array of single digit intigers 
  # output: sum of all elements in array
  def sum_array(final_number)
    return final_number.inject{|sum, x| sum + x}
  end 
  
  # input: an intiger 
  # output: boolian depending if it is divisible by 10 or not
  def divisible_by_10?(sum)
    return (sum % 10 == 0)
  end

end





# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end


cc1 = CreditCard.new (1111111111111111)
assert { cc1.check_card() == false }

# Should accept a string with spaces this # should be true
cc2 = CreditCard.new ("4563 9601 2200 1999")
assert { cc2.check_card() == true }

# Shouldn't accept anything too long
CreditCard.new ("4563 9601 2200 199999") rescue 
assert { $!.message == "Should be 16 numbers" }

# Shouldn't accept anything too short 
CreditCard.new ("4563 9601 2200") rescue 
assert { $!.message == "Should be 16 numbers" }





# Reflection 
# So I realize that most of my methods are one line and I could've made the whole 
# class less lengthly by not defining so many methods. Out of all of the credit card 
# solutions that I looked at, mine is the longest. 

# However, I wanted to make each step easy to follow. For the check_card method 
# I wanted it very obvious that I was following the Luhn algorithm. 

# the big difference between the code before refactoring (which I had already refactored 
# twice) was the use of map. I finally have become comfortable with .map which made a lot 
# of the operations turning integer arrays into string arrays and back much shorter 
# and more efficient. Overall, that was the biggest "ah ha" moment of these two challenges. 

# The frustraiting part is that I wanted to make it shorter, and more readable. This is 
# the challenge that has the most methods called on top of methods on top of methods 
# to counteract that, I tried to add extra comments. 