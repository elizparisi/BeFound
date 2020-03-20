class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end

  def show
    @recommendation = Recommendation.find(params[:id])
  end

  def create
    @recommendation = Recommendation.create(recommendation_params)
    @recommendation.user_id = current_user.id

    if @recommendation.save
      redirect_to recommendation_path(@recommendation)
    else
      render :new
    end
  end


  private

  def recommendation_params
    params.require(:recommendation).permit(:name, :image_url, :location, :description)
  end
end
