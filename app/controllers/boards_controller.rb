class BoardsController < ApplicationController
  def show
  end

  def new
  end

  def create
    Board.create(title: params[:board_title],
                 content: params[:board_content],
                 weather: params[:board_weather]
                 )
    
    redirect_to '/homes/index'
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
