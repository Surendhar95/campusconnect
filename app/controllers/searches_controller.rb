class SearchesController < ApplicationController
  before_action :authenticate_user!
    def index
        @questions = Question.order(:body).where("LOWER(body) LIKE ?", "%#{params[:term].downcase}%")
        render json: @questions.map(&:body)
    end
end
