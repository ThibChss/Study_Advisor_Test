class QuizzsController < ApplicationController
  before_action :set_quizz, :set_questions, only: %i[show update]

  def show() end

  def update
    quizz_score = CalculateScoreService.new(params[:quizz], @quizz).call
    total_score = @quizz.score << quizz_score
    @quizz.update(score: total_score)
    redirect_to root_path, notice: "Your score is #{quizz_score} on 3"
  end

  private

  def set_quizz
    @quizz = Quizz.find(params[:id])
  end

  def set_questions
    @questions = @quizz.questions
  end

  def set_user_answer
    @user_answer = params[:quizz][:answer_ids].reject(&:empty?).map(&:to_i)
  end
end
