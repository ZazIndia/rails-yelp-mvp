class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to restaurant_reviews_path(@review)
    else
      render 'new'
    end
  end
end
