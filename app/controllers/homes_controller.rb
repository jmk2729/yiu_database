class HomesController < ApplicationController
  def index
    @post = Board.all
    @tpost = Tboard.all
  end
  
  def new
  end
  
  def create

  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end
