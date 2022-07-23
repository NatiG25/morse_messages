@messages = {
  "A" => ".-",
  "B" => "-...",
  "C" => "-.-.",
  "D" => "-..",
  "E" => ".",
  "F" => "..-.",
  "G" => "--.",
}

# messages.each { |key, val| puts "#{key} is #{val}" }
def decode_char (string)
  @messages.each { |key, val|
    if string == val
      puts "#{string} is #{key}"
      end
    }
    # chars.each { |s| puts s }
end


