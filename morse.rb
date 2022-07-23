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

def decode_char (string)
  chars = string.split(' ')
  @messages.each { |key, val|
    chars.each {|s| if s == val
      print key
    end
    }
  }
end

