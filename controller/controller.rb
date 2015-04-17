require_relative '../view/view.rb'


class Controller
attr_reader :deck

  def initialize(deck)
    @deck = deck
  end

  def user_input
    gets.chomp
  end

  def welcome
    View.rules
    player_start = user_input
    if player_start == "2"
      View.end_game
      return
    elsif player_start == "1"
      start
    else
      View.invalid_input
      welcome
    end
  end

  def start
    card_index = 0
    # Sets a current card equal to a "drawn" card object
    current_card = Deck.draw_card(card_index)
    # Displays a card object
    View.display(current_card)
    guess
    card_index += 1
  end

  def guess
    guess_counter = 1
    player_guess = user_input
    if player_guess == current_card.answer
      View.correct_answer(player_guess)
      start
    else
      View.wrong_answer(player_guess)
      guess_counter += 1
      View.hint1(current_card.answer)
      player_guess = user_input
      if player_guess == current_card.answer
        View.correct_answer(player_guess)
        start
      else
        View.wrong_answer(player_guess)
        guess_counter += 1
        View.hint2(current_card.answer)
        player_guess = user_input
        if player_guess == current_card.answer
          View.correct_answer(player_guess)
          start
        else
          View.wrong_answer(player_guess)
          View.correct_answer(current_card.answer)
          start
        end
      end
    end
  end

end


test1 = Controller.new([1,2,3])
test1.start
