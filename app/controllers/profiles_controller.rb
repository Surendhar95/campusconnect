class ProfilesController < ApplicationController
 before_action :authenticate_user!


  def index
    @profile = Profile.where(user_id: current_user.id)
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

  private
      def profiles_params

          params.require(:profile).permit(:user_id, :name, :bio, :school, :college, :work, :dob)
      end
end
