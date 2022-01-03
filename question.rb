class Question
  attr_accessor :question, :correct_answer

  def initialize()
    @question = ''
    @correct_answer = 0
  end

  def generate_question
    number1 = rand(20) + 1
    number2 = rand(20) + 1
  
    @correct_answer = number1 + number2
    @question = "What does #{number1} plus #{number2} equal? "
  end
end
