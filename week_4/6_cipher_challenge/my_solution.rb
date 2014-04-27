# U2.W4: Cipher Challenge


# I worked on this challenge with: .



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.


# defining north_korean_cipher
# argument is coded_message = string
# def north_korean_cipher(coded_message)
#   # takes the string and splits it up between the chracters into array
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  
#   # make empty array for decoded sentence
#   decoded_sentence = []
  
#   # this hash represents a caesar cipher. Each letter is shifted 
#   # to a different letter. 
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
#   # each element in the coded message array does the following block          
#   input.each do |x| # What is #each doing here?
  
#     # once it turns true we stop the search for a coded match  
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    
#     # if the coded character is equal to y, then it pushes the uncoded character
#     # as determined by the cipher to the decoded sentence array 
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
#         # once it has found a match, it doesn't need to search anymore
#         break  # Why is it breaking here?
        
#         # all of these symbols represent spaces then it pushes the uncoded character
#         # as determined by the cipher to the decoded sentence array 
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
        
#         # (0..9).to_a  makes an array from 0 - 9
#         # this checks if x is a number from 0 - 9
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
    
#     # this checks for any undetermined characters
#     # and pushes them as they are, to the decoded sentence
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
  
#   # this takes the array and makes it a string
#   decoded_sentence = decoded_sentence.join("")
 
#   # looks for a whole number in string and substitues them with that number divided
#   # by 100 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#   end  
  
#   # returns the product of all this (mess) translation as a string
#   return decoded_sentence # What is this returning?        
# end

# Your Refactored Solution
  def letters_to_shifted_num(coded_message_array, shift)
    decoded_sentence = []
     coded_message_array.each do |letter| 
        next_letter = letter.ord
         #puts "next letter #{next_letter} - letter.ord #{letter.ord}"
        if next_letter > 122 || next_letter < 97
         decoded_sentence.push(letter.ord)
     else
         if next_letter - shift < 97 
             next_letter+=26
         end
         decoded_sentence.push(next_letter.ord - shift)
     end

 end
      return decoded_sentence
 end

def shifted_num_to_letters (decoded_sentence)
    decoded_sentence_letters = []
    decoded_sentence.each do |number|
        if number.chr == "@" || number.chr == "#" || number.chr == "$" || number.chr == "%"|| number.chr == "^" || number.chr == "&"|| number.chr =="*"
    decoded_sentence_letters.push (" ")
else
            decoded_sentence_letters.push (number.chr)
end
end
return decoded_sentence_letters
end




def north_korean_cipher(coded_message)
  # takes the string and splits it up between the chracters into array
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  
  # make empty array for decoded sentence


decode = letters_to_shifted_num(input, 4)  
decoded_sentence = shifted_num_to_letters (decode)



  
     
#puts 97.chr ==  "a".ord
#puts 122.chr == "z".ord     

  # this takes the array and makes it a string
  decoded_sentence = decoded_sentence.join("")
 
  # looks for a whole number in string and substitues them with that number divided
  # by 100 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  
  # returns the product of all this (mess) translation as a string
  return decoded_sentence # What is this returning?        
end




# Driver Code:
puts north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
puts north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
puts north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
puts north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
puts north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
puts north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# relying on user function.
# relying on that these are codes and it will work the way it says. 
# relying on the fact that input CAN be translated 
# and function is written such that it decyphers
# Can't rely on knowledge of exact syntax, only user functionality 

# list of ideas
# ~ Turn hashs into algorithm
# ~ renaming input
# ~ D.R.Y else code
# ~ use ascii numbers to replace hash's

# Reflection


 
