require_relative 'hangman'

def play_game
  word_list = load_words('word_list.txt')
  word = choose_word(word_list)
  correct_guesses = []
  wrong_guesses = []
  errors = 0

  loop do
    system('clear') || system('cls')
    display_hangman(errors)
    puts "\nPalavra: #{display_word(word, correct_guesses)}"
    puts "Tentativas erradas: #{wrong_guesses.join(', ')}"
    print "\nDigite uma letra: "
    letter = gets.chomp.downcase

    next if correct_guesses.include?(letter) || wrong_guesses.include?(letter)

    if word.include?(letter)
      correct_guesses << letter
      if player_won?(word, correct_guesses)
        puts "\nParabéns! Você ganhou!"
        break
      end
    else
      wrong_guesses << letter
      errors += 1
      if errors == 5
        puts "\nFim de jogo! A palavra era '#{word}'."
        break
      end
    end
  end
end

play_game
