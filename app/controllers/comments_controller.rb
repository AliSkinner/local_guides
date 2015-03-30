class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
      format.js
    end

  end


  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment, include: :user }
      format.js
    end
  end


  def index
    @comments = Comment.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comments }
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :place_id)
  end


end