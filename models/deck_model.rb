require_relative '../module/parse_module'
require_relative 'card_model'
class Deck
  attr_reader :deck
  include FlashCard
  def initialize
    @deck = FlashCard.parse("flashcards.txt")
  end

  def self.draw_card(index)
    @deck[index].to_s
  end
end
dex = Deck.new

