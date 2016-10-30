class AnswersController < ApplicationController
    def create
        @question = Question.find(params[:question_id])

        @answer = @question.answers.create(answers_params)

        redirect_to question_path(@question)
    end

    private
        def answers_params
            params[:answer][:user_id] = User.first.id
            params.require(:answer).permit(:user_id, :body, :likes)
        end
end
