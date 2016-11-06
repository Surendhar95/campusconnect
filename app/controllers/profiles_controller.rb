class ProfilesController < ApplicationController
 before_action :authenticate_user!


  def index
        @notification = Notification.order(id: :desc).where(user_id: current_user.id)
    @profile = Profile.where(user_id: current_user.id)
    if @profile
    else
        redirect_to users_update_profile_path
    end
  end

  def create
      @user = User.find(current_user.id)

      profile_count = Profile.where(user_id: @user.id).count
      if(profile_count == 0)
        @prof = @user.profiles.create(profiles_params)
      else
        @prof = @user.profiles.update(profiles_params)

      redirect_to profiles_index_path
      end
  end

  def edit
    @profile = Profile.where(id: params[:id], user_id: params[:user_id])
    @profile = @profile.first
  end

  def update
      @user = User.find(current_user.id)

     @prof = @user.profiles.update(profiles_params)
    redirect_to profiles_index_path
  end

  def set_profile
    @profile = Profile.where(params[:id], user_id: params[:user_id])
  end

  private
      def profiles_params

          params.require(:profile).permit(:user_id, :name, :bio, :school, :college, :work, :dob)
      end
end
