# Get user input for message to encrypt
puts "Type message to encrypt here: "
message = gets.chomp.downcase

# Get user input for encryption number
puts "Type encryption number between 1 - 9 here: "
number = gets.chomp.to_i

# Define caesar cipher method with arguments
def caesar_cipher(message , number)
# List letters of the alphabet and put them into an array
# Letters.zip pairs the letters with a number ie - [a, 1]
# Letters.rotate rotates the alphabet dependent on the user input "numbers"
#
  letters = ('a'..'z').to_a
  key = Hash[letters.zip(letters.rotate(number))]
  message.each_char.inject("") do |newtext, char|
    if letters.include?(char)
      newtext + key[char]
    else
      newtext += char
    end
  end
end

puts caesar_cipher(message, number)
