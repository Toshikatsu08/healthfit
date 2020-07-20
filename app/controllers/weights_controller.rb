class WeightsController < ApplicationController
  def new
    @weight = Weight.new
  end

  def create
    weight = Weight.create(weight_params)
    redirect_to features_path(current_user)
  end

  private
  
  def weight_params
    params.require(:weight).permit(:dailyweight).merge(user_id: current_user.id, feature_id: params[:feature_id])
  end
end
