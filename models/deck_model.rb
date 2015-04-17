require_relative '../module/parse_module'
require_relative 'card_model'
class Deck
  attr_reader :deck
  include FlashCard
  def initialize
    @deck = FlashCard.parse("flashcards.txt")
  end
end
dex = Deck.new
# p dex.deck[0].flip[0]
