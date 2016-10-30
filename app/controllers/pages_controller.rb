class PagesController < ApplicationController
  def index

    @questions = Question.All
  end

  def about
  end
end
