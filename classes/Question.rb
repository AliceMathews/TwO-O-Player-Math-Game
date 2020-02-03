class Question 
  attr_reader :number1, :number2, :answer

  def initialize 
    @number1 = random_num_generator()
    @number2 = random_num_generator()
    @answer = @number1 + @number2
  end

  def random_num_generator 
    rand((1..20))
  end

  def question_text 
    "What does #{number1} plus #{number2} equal?"
  end
end 