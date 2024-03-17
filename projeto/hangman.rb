def load_words(filename)
  File.readlines(filename, chomp: true)
end

def choose_word(word_list)
  word_list.sample.downcase
end

def display_hangman(errors)
  body_parts = [
    "  O",
    " _|_",
    " |",
    " /",
    " |"
  ]
  puts "  ____ "
  puts " |    |"
  body_parts.take(errors).each { |part| puts part }
  puts " |"
  puts " |"
  puts "_|___"
end

def display_word(word, correct_guesses)
  word.chars.map { |letter| correct_guesses.include?(letter) ? letter : '_' }.join(' ')
end

def player_won?(word, correct_guesses)
  word.chars.all? { |letter| correct_guesses.include?(letter) }
end
