class FoodsController < ApplicationController
  def show
  end

  def new
  end

  def create
    Meal.create(food_name: params[:food_name],
                calorie: params[:food_calorie],
                sort: params[:food_sort]
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