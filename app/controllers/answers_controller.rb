class AnswersController < ApplicationController
     before_action :authenticate_user!
    def create
        @question = Question.find(params[:question_id])

        @answer = @question.answers.create(answers_params)

        redirect_to question_path(@question)
    end

    private
        def answers_params
            params[:answer][:user_id] = current_user.id
            params[:answer][:likes] = 0
            params.require(:answer).permit(:image,:user_id, :body, :likes)
        end
end
