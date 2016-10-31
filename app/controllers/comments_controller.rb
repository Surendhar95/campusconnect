class CommentsController < ApplicationController
  def index
  end

  def create

  end

  def update
    user_id = User.first.id
    ans_id = params[:ans_id]
    likes = Answer.find(ans_id).likes+1
    Comment.create(user_id: user_id, answer_id: ans_id, likes: "1" )
    Answer.update(ans_id, likes: likes)
    return Json(likes, JsonRequestBehavior.AllowGet);
  end

  def comment_params
    params.require(:comment).permit(:user_id, :body, :description, :tags)
  end
end
