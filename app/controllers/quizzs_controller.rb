class QuizzsController < ApplicationController
  before_action :set_quizz, :set_questions, only: %i[show update]
  before_action :calculate_score, only: :update

  def show() end

  def update
    if @user_answer.length > 3
      flash[:alert] = 'One answer per question'
      render :show, status: :unprocessable_entity
    else
      score = @quizz.score << @score
      @quizz.update(score: score)
      redirect_to root_path, notice: "Your score is #{calculate_score} on 3"
    end
  end

  private

  def set_quizz
    @quizz = Quizz.find(params[:id])
  end

  def set_questions
    @questions = @quizz.questions
  end

  def calculate_score
    @score = 0
    @questions.each do |question|
      @user_answer = params[:quizz][:answer_ids].reject(&:empty?).map(&:to_i)
      @good_answer = Answer.where(question_id: question.id).and(Answer.where(status: true)).map(&:id)
      @answer = @user_answer & @good_answer
      @score += @answer.length unless @answer.empty?
    end
    return @score
  end
end
