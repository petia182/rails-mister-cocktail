class ReviewsController < ApplicationController

  before_action :find_cocktail

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @review.cocktail = @cocktail
    @review.save

    redirect_to @cocktail
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
