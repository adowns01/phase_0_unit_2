# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: credit card number
# Output: boolian depending if it is a valid number or not
# Steps: 
# Get rid of spaces between numbers
# check length
# turn number into an array 
# all even elements in the array are doubled
# turn array into string
# turn each character into number
# sum number % 10 should equal 0 (true)


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard
#   def initialize(card_number)
   
#     @card_number = card_number.to_s.gsub(/\s+/, "") 
#     raise ArgumentError.new("It's not 16!") if @card_number.length != 16
#     @card_array = Array.new( 16, nil)
#     @card_int = []
#     doubler()
#     convert()
#     convert_to_num()
#     adder()
#     divisible()
#   end
  
#   def doubler()
#     #@card_number.to_a
#     #puts @card_number
#     for i in 0..15
#       @card_array[i] = @card_number[i].to_i
#     end 

#     for i in 0..15
#       if (i % 2 == 0)
#         @card_array[i] =  @card_array[i] * 2

#       end
#     end
#     puts @card_array
#   end
  
#   def convert()
#       @card_string = ""
#     for i in 0..15
#       @card_string += @card_array[i].to_s
#     end 
#   end
  
#   def convert_to_num()
#     len = @card_string.length 
#     for i in 0..len
#       @card_int.push(@card_string[i].to_i)
#     end 
#   end
  
#   def adder()
#     puts @card_int
#     @sum = 0
#     @card_int.each {|x| @sum += x}
#     puts @sum
#   end 
  
#   def divisible()

#     if @sum % 10 == 0
#       return true
#     else 
#       return false
#     end
#   end

# end


# 4. Refactored Solution #1 ( we did this refactor together)
# class CreditCard
#   def initialize(card_number)
   
#     @card_number = card_number.to_s.gsub(/\s+/, "") 
#     raise ArgumentError.new("It's not 16!") if @card_number.length != 16
#   end
  
#   def check_card()
#     card_array = convert_to_int_array(@card_number)
#     double_array = doubler(card_array)
#     card_string = convert_to_string(double_array)
#     final_number = convert_to_num(card_string)
#     sum = adder(final_number)
#     puts divisible(sum)
#     return divisible(sum)
  
#   end
  
#   private 
  
#   def convert_to_int_array(value)
#     card_array = []
#     len = value.length
#     for i in 0..(len-1)
#       card_array[i] = value[i].to_i
#     end 
#     puts "."
#     puts card_array
#     return card_array
#   end
  
#   def doubler(value)
#     for i in 0..15
#       if (i % 2 == 0)
#         value[i] =  value[i].to_i * 2

#       end
#     end
#     puts "."
#     puts value
#     value
#   end
  
#   def convert_to_string(card_array)
#       card_string = ""
#     for i in 0..15
#       card_string += card_array[i].to_s
#     end 
#     puts"."
#     puts card_string
#     return card_string
#   end
  
#   def convert_to_num(card_string)
#     len = card_string.length 
#     card_int = []
#     for i in 0..len
#       card_int.push(card_string[i].to_i)
#     end 
#     puts "."
#     puts card_int
#     return card_int
#   end
  
#   def adder(final_number)
#     sum = 0
#     final_number.each {|x| sum += x}
#     puts "."
#     puts sum
#     return sum
#   end 
  
#   def divisible(sum)
#     if sum % 10 == 0
#       return true
#     else 
#       return false
#     end
#   end

# end

# Refactor #2 (I did this one alone)
# Re-pseudo: 
# 1 check if valid 
# 2 double 
# 3 seperate 
# 4 add
# 5 modulo by 10

class CreditCard

  def initialize(card_number)
    @card_number = card_number
    clean_card_number()
  end

  def check_card()
    # first double ever other number in the array
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
  
  # Input: the cc# as a string
  # Output: the cc# as an int array
  def convert_to_int_array(card_string)
    card_int_array = []
    len = card_string.length

    len.times {|i| card_int_array.push(card_string[i].to_i) }

    return card_int_array
  end
  
  # input: array of intigers
  # output: array of intigers with all the even elements doubled 
  def double_evens()
    int_array = convert_to_int_array(@card_number)

    16.times do |i|
        (int_array[i] *= 2) if (i % 2 == 0)
    end  
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
    card_string = ""
    16.times {|i| card_string += card_array[i].to_s}
    return card_string
  end
  
  # input: string of intigers 
  # output: array of intigers (all single digit)
  def convert_to_num(card_string)
    len = card_string.length 
    card_int = []
    len.times {|i| card_int.push(card_string[i].to_i)}
    return card_int
  end
  
  # input: array of single digit intigers 
  # output: sum of all elements in array
  def sum_array(final_number)
    sum = 0
    final_number.each {|x| sum += x}
    return sum
  end 
  
  # input: an intiger 
  # output: boolian depending if it is divisible by 10 or not
  def divisible_by_10?(sum)
    return (sum % 10 == 0)
  end

end




# 1. DRIVER TESTS GO BELOW THIS LINE (done by myself)

# Should accept an int and this number should be false
cc1 = CreditCard.new (1111111111111111)
puts cc1.check_card() == false

# Should accept a string with spaces this # should be true
cc2 = CreditCard.new ("4563 9601 2200 1999")
puts cc2.check_card() == true

# Shouldn't accept anything too long
CreditCard.new ("4563 9601 2200 199999") rescue 
puts $!.message == "Should be 16 numbers"

# Shouldn't accept anything too short 
CreditCard.new ("4563 9601 2200") rescue 
puts $!.message == "Should be 16 numbers"


# 5. Reflection 



