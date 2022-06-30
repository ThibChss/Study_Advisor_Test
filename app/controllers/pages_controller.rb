class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_quizzs, only: %i[home profile]

  def home() end

  def profile() end

  private

  def set_quizzs
    @quizzs = Quizz.all
  end
end
