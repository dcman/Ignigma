=begin
    Introduce the app
    Collect required data:
      1. Number of cylinders
      2. Start pos of each cylinder
      3. Encode/Decode string
=end

require File.dirname(__FILE__) + '/my_encoder'
require File.dirname(__FILE__) + '/my_decoder'

@cyl = 1
@start = 1
@text = 'This is a text with a lot of text and I hope it goes more then thirty chars after it removes the spaces.'

# @return [String]
def encoder
  encoder = Encoder.new(@cyl, @start, @text)


end


# @return [String]
def decoder
  decoder = Decoder.new(@cyl, @start, @text)

end

puts 'Welcome to the Enigma Machine....'
puts 'Would you like to encode[1] or decode[2]?'
while  true
  a = gets.chomp
  if a == 1.to_s
    puts encoder.encode.to_s

  elsif a == 2.to_s
    puts decoder
  else
    exit
  end
end