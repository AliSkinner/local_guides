class ReviewsController < ApplicationController

  def new
    @review = Review.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @review }
      format.js
    end

  end


  def create
    @review = Review.create(review_params)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @review, include: :user }
      format.js
    end
  end


  def index
    @comments = Review.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comments }
      format.js
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :reviewer_id, :subject_id)
  end


end