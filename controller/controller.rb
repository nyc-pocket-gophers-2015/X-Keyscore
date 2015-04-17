require_relative '../view/view.rb'
require_relative '../models/deck_model.rb'
require_relative '../module/parse_module.rb'
require_relative '../models/card_model.rb'

class Controller
attr_reader :deck
# attr_accessor :card_index

  def initialize(deck)
    @deck = deck
    @card_index = 0
    @score = 0
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
      View.deck_order
      if user_input == 'yes'
        deck.shuffle
      end
      start
    else
      View.invalid_input
      welcome
    end
  end

  def start
    # Sets a current card equal to a "drawn" card object
    sleep (1.2)
    system "clear"
    if @card_index == deck.length
      View.play_again
      user_input
      if user_input == "yes"
        @card_index = 0
        start
      else
        View.end_game
        View.score(@score)
      end
    else
      @current_card = deck.draw_card(@card_index)
      # Displays a card object
      View.display(@current_card.question)
      guess
    end
  end

  def guess
    until user_input == 'quit'
      guess_counter = 1
      player_guess = user_input
      if player_guess == @current_card.answer
        View.correct_answer(player_guess)
        @card_index = @card_index + 1
        @score += 3
        start
      else
        View.wrong_answer(player_guess)
        guess_counter += 1
        View.hint1(@current_card.answer)
        player_guess = user_input
        if player_guess == @current_card.answer
          View.correct_answer(player_guess)
          @score += 2
          @card_index += 1
          start
        else
          View.wrong_answer(player_guess)
          guess_counter += 1
          View.hint2(@current_card.answer)
          player_guess = user_input
          if player_guess == @current_card.answer
            View.correct_answer(player_guess)
            @score += 1
            @card_index += 1
            start
          else
            View.wrong_answer(player_guess)
            View.correct_answer(@current_card.answer)
            @card_index += 1
            start
          end
        end
      end
    end
  end

end

dex = Deck.new
play = Controller.new(dex)
play.welcome
