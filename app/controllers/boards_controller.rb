class BoardsController < ApplicationController

  def new
  end

  def create
    @post = Board.new
    @post.title = params[:board_title]
    @post.content = params[:board_content]
    @post.save
    
    redirect_to '/boards/show'
  end

  def show
    @post = Board.all
  end

  def edit
    @post = Board.find(params[:post_id])
  end

  def update
    @post = Board.find(params[:post_id])
    @post.title = params[:board_title]
    @post.content = params[:board_content]
    @post.save
    
    redirect_to '/boards/show'
  end

  def destroy
    @post = Board.find(params[:post_id])
    @post.destroy
    
    redirect_to '/boards/show'
  end
  
  def read
    @post = Board.find(params[:post_id])
  end
end
