class Card
  attr_reader :question, :answer
  def initialize(args = {})
    @question = args[:question]
    @answer = args[:answer]
  end

  def to_s
   "#{self.question}"
  end

 def flip
  "#{self.answer}"
 end



end
