# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# the variable name is assigned the string "bettysue"

# the block {name == "bettysue"} is passed to the method assert
# assert yields to the block, thus the block runs
# the block returns true, thus nothing is raised. 

# the block {name == "billybob"} is passed to the method assert
# assert yields to the block, thus the block runs
# the block returns false, thus and error is raised.


# 3. Copy your selected challenge here

 
def dessert_qty(num_of_people, my_list)

  treat_qty = []
  
  my_list.each do |treat, num|
    if ((num_of_people /  num) > 0)
        treat_qty.push(num_of_people / num)
       num_of_people = num_of_people % num
     else 
       treat_qty.push(0)
    end 
  end
  
   return "You need to make #{treat_qty[0]} pie(s), #{treat_qty[1]} cake(s), and #{treat_qty[2]} cookie(s)."
  
end 
 
def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  if my_list.has_key?(fav_food) == false
        raise ArgumentError.new("You can't make that food")
  end

   fav_food_qty = my_list[fav_food]
   
    if num_of_people % fav_food_qty == 0 
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
      
    end
     dessert_qty(num_of_people, my_list)

end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
# p bakery_num(24, "cake") == "You need to make 4 cake(s)."

# 4. Convert your driver test code from that challenge into Assert Statements
assert{bakery_num(24, "cake") == "You need to make 4 cake(s)."}
assert{bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."}
assert{bakery_num(24, "cookie") == "You need to make 24 cookie(s)."}
assert{bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."}
assert{bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."}



# 5. Reflection

# I don't think I quite understand why using an assert statement is better 
# But I guess that it's nice not haivng anything print out for successful. 
# 
# I'm curious if there are other types of assert statements or if this is the 
# only kind used. 

# The assert statements are easy enough to utilize, but I just need to research 
# them a bit more. 
