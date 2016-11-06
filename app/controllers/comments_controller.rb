class CommentsController < ApplicationController
 before_action :authenticate_user!
  def index
  end

  def create

  end

  def update

    ans_id = params[:ans_id]
    likes = Answer.find(ans_id).likes+1
    user_id = Answer.find(ans_id).user_id
    Comment.create(user_id: current_user.id, answer_id: ans_id, likes: "1" )
    Answer.update(ans_id, likes: likes)
    Notification.create(user_id: user_id,commenter_id: current_user.id, answer_id: ans_id, context: "like")

  end

  def comment_params
    params.require(:comment).permit(:ans_id,:commenter_id,:context)
  end
end
