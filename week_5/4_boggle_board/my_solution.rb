# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# input: arrays of coordinates (any number) 
# output: a string of the word the letters at those coordinates form
# steps: for each coordinate, find that letter on the board. 
# Then join all of those letters together with no spaces 
# return that string

# Initial Solution

  def create_word(*coords)
  	board = $boggle_board 
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts create_word([0,0], [1,1], [2,2], [1,3]) == "bolt"



# Reflection 

# because I did make boggle_board a global variable, I decided to change this 
# method to reflect that. I wrote line 23, rather than rewriting, line 24, 
# to keep line 24 short. 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# get_row: input is an intiger representing a row number, output is 
# an array. Method: make sure the incoming answer is a positive integer (n)
# if it is return the nth element of boggle_board

# Initial Solution


# def get_row(row)
# 	return false if ((row % 1 != 0) || row < 0)
# 	return $boggle_board[row]
# end


# Refactored Solution
def get_row(row)
	max = $boggle_board.length - 1

	raise ArgumentError.new("No fractions") if (row % 1 != 0) 
	raise ArgumentError.new("No negative numbers") if (row < 0)
	raise ArgumentError.new("That number is too large") if (row > max)

	return $boggle_board[row]
end

# DRIVER TESTS GO BELOW THIS LINE

# No fractions
get_row(1.5) rescue 
puts $!.message == "No fractions"

# no negative numbers 
get_row(-2) rescue 
puts $!.message == "No negative numbers"

# no numbers that are too large 
get_row(6) rescue 
puts $!.message == "That number is too large"

# it should return ["b", "r", "a", "e"]
puts get_row(0) == ["b", "r", "a", "e"]

# Reflection 

#whole reflection at end 


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution


# def get_col(col)
	
# 	return false if ((col % 1 != 0) || col < 0)
	
# 	col_contents = []
# 	$boggle_board.each do |x| 
# 		col_contents.push(x[col])
# 	end 

# 	return col_contents
# end




# Refactored Solution

def get_col(col)
	max = $boggle_board.length - 1
	
	raise ArgumentError.new("No fractions") if (col% 1 != 0) 
	raise ArgumentError.new("No negative numbers") if (col < 0)
	raise ArgumentError.new("That number is too large") if (col > max)
	
	col_contents = []
	$boggle_board.each {|x| col_contents.push(x[col])}

	return col_contents
end

# DRIVER TESTS GO BELOW THIS LINE

# No fractions
get_col(1.5) rescue 
puts $!.message == "No fractions"

# no negative numbers 
get_col(-2) rescue 
puts $!.message == "No negative numbers"

# no numbers that are too large 
get_col(6) rescue 
puts $!.message == "That number is too large"

# it should return ["b", "i", "e", "t"]
puts get_col(0) == ["b", "i", "e", "t"]

#get_col(2)


# Reflection 


# This challenge did a good job of showing how to use methods for 
# one purpose only. One method- one problem. Doing this helps 
# me keep ideas straight in my mind and it makes the code more readable. 

# When I first saw the title of this challenge I became nervous. For 
# one of my compsci classes in college, the final project was boggle related.
# we had to be able to build an infinate sized board, import a dictionary, and 
# find everyword on the board. I was happy to find this challenge much easier
# than that one. 

# I'm really enjoying ruby, but I don't feel challenged yet. I'm really 
# looking forward to learning more. 





