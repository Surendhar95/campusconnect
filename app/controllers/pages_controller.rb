class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @question = Question.order(updated_at: :desc).all


  end

  def about
  end
end
