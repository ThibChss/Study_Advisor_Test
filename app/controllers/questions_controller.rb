class QuestionsController < ApplicationController
  before_action :authorize_admin, only: %i[new create edit update delete]
  before_action :set_quizz, only: %i[new create]

  def new
    @question = Question.new
    4.times do
      @question.answers.build
    end
  end

  def create
    @question = Question.new(question_params)
    @question.quizz = @quizz
    if @question.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity, alert: 'Missing information'
    end
  end

  private

  def set_quizz
    @quizz = Quizz.find(params[:quizz_id])
  end

  def question_params
    params.require(:question).permit(:title, answers_attributes: %i[title status question_id])
  end
end
