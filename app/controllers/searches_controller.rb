class SearchesController < ApplicationController

    def index
        @questions = Question.order(:body).where("LOWER(body) LIKE ?", "%#{params[:term].downcase}%")
        render json: @questions.map(&:body)
    end
end
