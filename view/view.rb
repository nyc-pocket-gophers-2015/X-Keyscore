class View

  def self.display(arg)
    puts arg
  end

  def self.rules
    puts "FLASHCARD RULES: \n You will be shown one flashcard at a time out of the deck. \n You have 3 guesses to answer correctly. \n You will be given a hint after each wrong guess."

    puts "\n Would you like to play? \n Enter 1 for yes, 2 for no."
  end

  def self.end_game
    puts "Thanks for playing!!"
  end

  def self.invalid_input
    puts "Please enter a valid input."
    puts "\n \n"
  end

  def self.correct_answer(player_guess)
    puts "#{player_guess} is correct!!!!!"
  end

  def self.wrong_answer(player_guess)
    puts "#{player_guess} is wrong..."
  end

  def self.hint1(answer)
    puts "First letter is... #{answer[0]}. Guess again."
  end

  def self.hint2(answer)
    puts "Bigger hint... #{answer[0]..answer[1]}"
  end

end
