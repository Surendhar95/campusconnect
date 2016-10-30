class PagesController < ApplicationController
  def index
    @question = Question.order(updated_at: :desc).all


  end

  def about
  end
end
