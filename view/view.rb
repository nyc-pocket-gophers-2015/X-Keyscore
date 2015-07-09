# great view model
class View

  def self.display(arg)
    puts arg
  end

  def self.rules
    puts "*" * 70
    puts "\n FLASHCARD RULES: \n \t You will be shown one flashcard at a time out of the deck. \n \t You have 3 guesses to answer correctly. \n \t You will be given a hint after each wrong guess.\n \n Scoring System: \n \t 3 points - correct guess on first try \n \t 2 points - correct guess on second try \n \t 1 point - correct guess on third try"
    puts "\n You may enter quit at any time!"
    puts "\n Would you like to play? \n Enter 1 for yes, 2 for no."
    puts "*" * 70
  end

  def self.end_game
    puts "Thanks for playing!!"
  end

  def self.flip(card)
    puts card.flip
  end

  def self.score(score)
    puts "Total score: #{score} points."
  end

  def self.play_again
    puts "You've reached the end of the deck. Do you want to play again? (yes/no)"
  end
  def self.invalid_input
    puts "Please enter a valid input."
    puts "\n \n"
  end

  def self.deck_order
    puts "Do you want the deck shuffled? (yes/no)"
  end

  def self.correct_answer(player_guess)
    puts "#{player_guess} is the correct answer!!!"
  end

  def self.wrong_answer(player_guess)
    puts "#{player_guess} is wrong..."
  end

  def self.hint1(answer)
    puts "First letter is... #{answer[0]}. Guess again."
  end

  def self.hint2(answer)
    puts "Bigger hint... #{answer[0..1]}"
  end

end
