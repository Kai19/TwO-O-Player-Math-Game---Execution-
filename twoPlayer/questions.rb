class Questions
  attr_reader :question, :answer, :no1, :no2
  attr_reader :answer
  def initialize
    @question = generate_question
    @answer = @no1 + @no2
  end

  def generate_question
    @no1 = rand(0..20)
    @no2 = rand(0..20)
    question = "#{no1} + #{no2}"
  end

end
