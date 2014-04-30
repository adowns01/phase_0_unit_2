# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# What is this code doing: 
# This code is taking data about the states population 
# and population density and using an algorithm to determine 
# how quickly the virus would spread and how many people will die.


# EXPLANATION OF require_relative
# require_relative gets info from another files in the same directory 
# as this file. This is a great way to keep test code seperate from code
# or to keep data seperate from code. Overall it helps keep code organized,
# readable, a DRY.
#
require_relative 'state_data'

class VirusPredictor

  # this does the initial construction of the class 
  # it assigns the arguments to instance variables 
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # this calls the algorithms and determines the predicted number of deaths
  # per state and the predicted speed the virus will spread 

  def virus_effects  #HINT: What is the SCOPE of instance variables?
    # instance vairiables only have scope within the instace of a class 
    deaths = predicted_deaths()
    speed = speed_of_spread()

    puts "#{@state} will lose #{deaths} people in this outbreak and the virus will spread across the state in #{speed} months.\n\n"
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method

  # everything below "private" cannot be accessed from outside the class. Only
  # the class can call these methods (or variables, if there were any). If 
  # private was moved above the method 'virus_effects' then the tests would
  # not work, because they wouldn't be able to call that method.

  # this calulates the number of predicted deaths based on population
  # and population density. It prints out the answer
  def predicted_deaths()


    case @population_density
    when 0 ... 50
      mult = 0.05
    when 50 ... 100
      mult = 0.1
    when 100 ... 150
      mult = 0.2
    when 150 ... 200
      mult = 0.3
    else 
      mult =  0.4
    end 

    return  (@population * mult).floor


    

  end

  # this calulates the estimated speed the virus will spread based on 
  # population and population density. It prints out the answer
  def speed_of_spread() #in months
   
    case @population_density
    when 0 ... 50
      speed = 2.5
    when 50 ... 100
      speed = 2
    when 100 ... 150
      speed = 1.5
    when 150 ... 200
      speed = 1.0
    else
      speed = 0.5
    end

    return speed
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, info|  

  virus_info = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread]) 
  
  pop = virus_info.instance_variable_get(:@population)
  puts "#{state} Population: #{pop}"
  
  virus_info.virus_effects

end 


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects