# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a string containing intigers and operators 
# Output: the solution
# Steps:
# turn string into array (call it polish_array)
# create new array (call it stack)
# iterate through the polish_array elements one by one
	# if it is a number push it to the stack
	# if it is an operand pop the last two numbers from the stack
	# do the operand on them 
	# then push the answer to the stack 
# in the end the answer should be left in the stack 


# 3. Initial Solution

# class RPNCalculator

#   def initialize (polish_string)
#   	@polish_array = polish_string.split("")
#   end



#   def solve
#   	stack = []

#   	@polish_array.each do |x|
#   		if (x.ord <=57 && x.ord >=48)
#   			stack.push (x.to_i) 
#   		else 
#   			num1 = stack.pop()
#   			num2 = stack.pop()
#   			ans = chr_to_method(num1, num2, x)
#   			stack.push(ans)
#   		end

#   	end
#   	puts stack
#   end 

#   def chr_to_method(num1, num2, chr)

#   	case chr 
#   	when "*"
#   		return num1*num2
#   	when "/"
#   		return num2/num1
#   	when "-"
#   		return num2-num1
#   	when "+"
#   		return num1+num2
#   	end 

#   end


# end



# 4. Refactored Solution

class RPNCalculator

  def initialize (polish_string)
  	@polish_array = polish_string.split("")
  	raise ArgumentError.new("Invalid Input") if (valid_input?() == false)
  end


  # input: none
  # output: answer
  def solve
  	stack = []
  	# go through the polish array one step at a time
  	@polish_array.each do |x|
  		# if it is a number, push to stack
  		if (x.ord <=57 && x.ord >=48)
  			stack.push (x.to_i) 
  		# if it is a symbol, pop two items from the stack 
  		# and preform that calculation
  		# then push that answer!
  		else 
  			num1 = stack.pop()
  			num2 = stack.pop()
  			ans = chr_to_method(num1, num2, x)
  			stack.push(ans)
  		end

  	end
  	# if there is more than one number in the stack, 
  	# the original input was invalid
  	valid_answer?(stack)
  	# the first (and only) element in the stack is the correct answer 
  	return stack[0]
  end 

private 
	# check if the input is valid 
	# it should only have numbers and operators
	def valid_input?()
		test_array = @polish_array.clone
		symbols = ["+", "-", "*", "/"]
		
		10.times {|i| test_array.delete(i.to_s)}
		symbols.each {|i| test_array.delete(i)}

		return (test_array.length == 0)

	end 

	# see if answer is valid
	# if there is more than one item in the stack at the end 
	# then the origional input was invalid
	def valid_answer?(stack)
		raise ArgumentError.new("Invalid Input") if(stack.length != 1)
	end

	# input: two numbers and a character of an operator
	# output: an intiger
 	def chr_to_method(num1, num2, chr)

	  	case chr 
	  	when "*"
	  		return num1*num2
	  	when "/"
	  		return num2/num1
	  	when "-"
	  		return num2-num1
	  	when "+"
	  		return num1+num2
	  	end 
  	end

end




# 1. DRIVER TESTS GO BELOW THIS LINE

# no other chrs but operators and numbers
RPNCalculator.new("512hd") rescue 
puts $!.message == "Invalid Input"

# must be valid polish calc
test1 = RPNCalculator.new("512+4*+3-99")
test1.solve() rescue 
puts $!.message == "Invalid Input"

# should work 
test2 = RPNCalculator.new("512+4*+3-")
puts test2.solve() == 14


# 5. Reflection 

# I am really facinated by reverse polish notation. Though I will admit I have spent several CS
# class periods devoted to us coming up with a method to not use parentesis for math equations. 
# and eventually we came up with RPN with some helpfully leading of our professor. So I was already
# intimately aquainted with RPN. 

# Overall I had a lot of fun with this challenge. I look forward to similar challenges, that I 
# haven't encountered before in the future. 




