class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  
  def show
    @comment = Comment.find_by(id: params[:id])
  end
  
  def new
  end
  
  def create
    @comment = Comment.new(content: params[:content])
    @comment.save
    redirect_to("/comments/index")
  end
  
  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    redirect_to("/comments/index")
  end
  
end
