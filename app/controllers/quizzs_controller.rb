class QuizzsController < ApplicationController
  before_action :set_quizz, :set_questions, only: %i[show update]
  before_action :authorize_admin, only: %i[new create delete]
  def show() end

  def new
    @quizz = Quizz.new
  end

  def create
    @quizz = Quizz.new(quizz_params)
    if @quizz.save
      redirect_to new_quizz_question_path(@quizz), notice: 'Created Successfully'
    else
      render :new, status: :unprocessable_entity, alert: 'Something went wrong'
    end
  end

  def update
    quizz_score = CalculateScoreService.new(params[:quizz], @quizz).call
    total_score = @quizz.score << quizz_score
    @quizz.update(score: total_score)
    @result = Result.create(user: current_user, quizz: @quizz, score: quizz_score)
    if quizz_score >= 2
      redirect_to root_path, notice: "You passed #{quizz_score} on 3"
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

  def quizz_params
    params.require(:quizz).permit(:title, :description, :difficulty)
  end
end
