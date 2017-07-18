class V1::ReviewsController < ApplicationController

  def index
    @place = Place.find(params[:place_id])
    @reviews = @place.reviews.all

    json_response(@reviews)
  end

  def new
    @place = Place.find(params[:place_id])
    @review = @place.reviews.new
    json_response(@review)
  end

  def create
    @place = Place.find(params[:place_id])
    @review = @place.reviews.new(review_params)
    json_response(@review)
  end

  def update
    @place = Place.find(params[:place_id])
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    json_response(@review)
  end


  private
    def review_params
      params.require(:review).permit(:author, :content)
    end
  end
