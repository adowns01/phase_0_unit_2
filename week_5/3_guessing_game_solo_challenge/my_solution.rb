# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 
# initialize accepts an intiger (the answer)
# guess accepts an intiger (the guess)

# Output: 
# .solved? return either true or false
# .guess returns either high, low, or correct 

# Steps:
# Create a game 
# set the answer to the inputed number
# create last_guess, but it doesn't have a value initially
# when someone calls #guess their guess is svved as the last_guess
# the guess will be compared with the anser 
# if it is too high, high will be returned 
# if it is too low, low will be returned 
# if it is correct, correct will be returns 
# if it is either too high or low the user will be prompted to guess again
# if the answer is correct, the game is over

# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @last_guess = nil
#     @game_solved = false
#   end
  
#   def solved? ()
#   	return @game_solved
#   end

#   def guess(guess)
#   	@last_guess = guess

#   	return :high if (guess > @answer)
#   	return :low if (guess < @answer)

#   	@game_solved = true
#   	return :correct
#    end 
# end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @game_solved = false
  end
  
  def solved? ()
  	return @game_solved
  end

  def guess(guess)

  	return :high if (guess > @answer)
  	return :low if (guess < @answer)

  	# if it is not high or low then it is correct 
  	# and the game is over!
  	@game_solved = true
  	return :correct

   end 
end





# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

# should return high when guess is too high
puts (game.guess(1000) == :high)

# should return low when guess is too low
puts (game.guess(5) == :low)

# should return false if game has not been solved
puts (game.solved? == false)

# should return correct when answer is correct
puts (game.guess(10) == :correct)






# 5. Reflection 

# For this challenge, I like that we were shown two possible options for how
# this game could work. I am glad that there was some more guidance for this 
# challenge or else I would never have used symbols.  I think I need to do 
# some more research on when is the best time to use symbols. 

# I found that writting the tests for this challenge was much simpler than 
# the previous challenges. I think it's partly because I'm getting used to 
# writing tasks and partly because I didn't have to use Error. 

# I look forward to seeing how my accountability group members handeled
# this challenge. 





