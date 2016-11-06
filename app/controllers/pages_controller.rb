class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @notification = Notification.order(id: :desc).where(user_id: current_user.id)
    if params[:search]
        @question = Question.where(["LOWER(body) LIKE ?","%#{params[:search].downcase}%"])
    else
        @question = Question.order(updated_at: :desc).all
    end

  end

  def about
  end
end
