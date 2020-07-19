class FeaturesController < ApplicationController
  def index
    @chart = [['7月9日', 80], ['7月10日', 75], ['7月11日', 80],['7月12日', 65],['7月13日', 80],['7月14日', 80]]
    @features = Feature.all
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
