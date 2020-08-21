def greet_user
  puts "Welcome to the Word Scrambler!"
  puts "Enter a sentence without punctuation to scramble, or type 'exit' to leave"
end

def get_user_input
  gets.strip
end

def scramble(sentence)
  words = sentence.split(" ")
  scrambled_words = words.map do |word|
    scramble_word(word)
  end
  scrambled_words.join(" ")
end

def scramble_word(word)
  return word if word.length < 4
  substring = word[1..-2]
  scrambled_substring = substring.split("").shuffle.join("")
  until scrambled_substring != substring
    scrambled_substring = substring.split("").shuffle.join("")
  end
  "#{word[0]}#{scrambled_substring}#{word[-1]}"
end



greet_user
sentence = get_user_input
while sentence != 'exit'
  scrambled = scramble(sentence)
  puts scrambled
  sentence = get_user_input
end

