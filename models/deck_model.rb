require_relative '../module/parse_module'

class Deck
  attr_reader :deck

  def initialize
    @deck = FlashCard.parse("../module/flashcards.txt")
  end

  def draw_card(index)
    @deck[index]
  end

  def shuffle
    @deck.shuffle!
  end

  def length
    @deck.length
  end
end

# test1 = Deck.new
# p test1.length
