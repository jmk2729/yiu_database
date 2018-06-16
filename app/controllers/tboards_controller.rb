class TboardsController < ApplicationController
  def new
  end

  def create
    @post = Tboard.new
    @post.title = params[:tboard_title]
    @post.content = params[:tboard_content]
    @post.save
    
    redirect_to '/tboards/show'
  end

  def edit
    @post = Tboard.find(params[:post_id])
  end

  def update
    @post = Tboard.find(params[:post_id])
    @post.title = params[:tboard_title]
    @post.content = params[:tboard_content]
    @post.save
    
    redirect_to '/tboards/show'
  end

  def destroy
    @post = Tboard.find(params[:post_id])
    @post.destroy
    
    redirect_to '/tboards/show'
  end

  def show
    @tpost = Tboard.all
  end
  
  def read
    @post = Tboard.find(params[:post_id])
  end
end
