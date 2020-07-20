class FeaturesController < ApplicationController
  def index
    @features = current_user.features
    @chart = current_user.weights.pluck(:created_at, :dailyweight)
  end
  
  def new
    @feature = Feature.new
  end

  def create
    Feature.create(feature_params)
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def update
    @feature = Feature.find(params[:id])
    if @feature.update(feature_params)
      redirect_to features_path
    else
      render :edit
    end
  end

  private
  def feature_params
    params.require(:feature).permit(:length, :weight , :age, :goalweight, :goaldate).merge(user_id: current_user.id)
  end

end
