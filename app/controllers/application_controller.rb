class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def authorize_admin
    redirect_to root_path, alert: "Not authorized" if current_user.try(:admin) == false
  end
end
