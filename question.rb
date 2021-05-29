require 'csv'
require 'pry'
class Question
  attr_reader :quiz, :hint, :answers

  def initialize(quiz, hint, *answers)
    @quiz = quiz
    @hint = hint
    @answers = answers
  end
end

quiz_params = []
CSV.foreach("questions.csv") do | q |
  quiz_params <<  q
end

questions = []
quiz_params.each do |params|
  questions << Question.new(*params)
end



$questions_random = questions.sample(10)
