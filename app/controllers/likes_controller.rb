class LikesController < ApplicationController
  def create
    current_user.likes.create!(food_id: params[:food_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.likes.find_by(food_id: params[:food_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end
