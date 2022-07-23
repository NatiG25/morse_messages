@morse_dict = {
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..'
}

def decode_char(char)
  @morse_dict.each do |key, val|
    return key if char == val
  end
end
# print decode_char(".")

def decode_word(string)
  word = ''
  string.split.each do |char|
    word += decode_char(char)
  end
  word
end

# print decode_word ".- -.. -.."

def decode_message(string)
  message = []
  string.split('   ').each do |s|
    message.push(decode_word(s))
  end
  message.join(' ')
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
