class Questions
  def initialize
    @question = generate_question
  end

  def generate_question
    question = "#{rand(0..20)} + #{rand(0..20)}"
    question.to_s
  end

end

question = Questions.new
