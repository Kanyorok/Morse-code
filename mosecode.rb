# frozen_string_literal: true

def morse_decipher(morse)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_code[morse]
end

def decode_char(morse_char)
  morse_decipher(morse_char)
end

def decode_word(morse_word)
  morse_word.split(' ').map do |char|
    decode_char(char)
  end.join('')
end

def decode(morse_code)
  morse_code = morse_code.strip # Remove leading and trailing spaces
  morse_code_words = morse_code.split('   ') # Split the Morse code into words

  morse_code_words.map do |word|
    decode_word(word)
  end.join(' ')
end

input_code = '-- -.--   -. .- -- .'
decoded_message = decode(input_code)
puts decoded_message
