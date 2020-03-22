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

  def edit
    @recommendation = Recommendation.find(params[:id])
  end

  def update
    @recommendation = Recommendation.find(params[:id])
    @recommendation.update(recommendation_params)
    redirect_to recommendation_path(@recommendation)
  end


  private

  def recommendation_params
    params.require(:recommendation).permit(:name, :image_url, :location, :description)
  end
end
