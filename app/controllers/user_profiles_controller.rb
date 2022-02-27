class UserProfilesController < ApplicationController
  before_action :set_user_profile, only: %i[ show edit update ]

  def show
  end

  def edit
  end

  def update
    if @user_profile.update(user_profile_params)
      redirect_to user_profile_path(@user_profile), notice: "user_profile was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user_profile
    @user_profile = UserProfile.find(params[:id])
  end

  def user_profile_params
    params.require(:user_profile).permit(:first_name, :last_name, :building_number, :address, :zip_code, :city, :date_of_birth)
  end
end
