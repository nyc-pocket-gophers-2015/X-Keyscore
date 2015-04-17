require_relative "../models/card_model"

module FlashCard
  def self.parse(file)
    flashcard_arr = []
    File.open(file) do |file|
      file.each_line.each_slice(2) do |question, answer|
        flashcard_arr << Card.new({:question =>  question.delete("\n"), :answer => answer.delete("\n")})
      end
    end
    flashcard_arr
  end
end


