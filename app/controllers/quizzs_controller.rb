class QuizzsController < ApplicationController
  before_action :set_quizz, :set_questions, only: %i[show update]

  def show() end

  def update
    quizz_score = CalculateScoreService.new(params[:quizz], @quizz).call
    total_score = @quizz.score << quizz_score
    @quizz.update(score: total_score)
    @result = Result.create(user: current_user, quizz: @quizz, score: quizz_score)
    if quizz_score >= 2
      redirect_to root_path, notice: "Your passed #{quizz_score} on 3"
    else
      redirect_to root_path, notice: "You failed the quizz"
    end
  end

  private

  def set_quizz
    @quizz = Quizz.find(params[:id])
  end

  def set_questions
    @questions = @quizz.questions
  end
end
