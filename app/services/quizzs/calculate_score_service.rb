class CalculateScoreService
  def initialize(params, quizz)
    @params = params
    @quizz = quizz
  end

  def call
    questions = @quizz.questions
    score = 0
    questions.each do |question|
      user_answer = @params[:answer_ids].reject(&:empty?).map(&:to_i)
      good_answer = Answer.where(question_id: question.id).and(Answer.where(status: true)).map(&:id)
      answer = user_answer & good_answer
      score += answer.length unless answer.empty?
    end
    return score
  end
end
