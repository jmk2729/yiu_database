class FoodsController < ApplicationController
  def show
    @food = Meal.all
  end

  def new
  end

  def create
    Meal.create(food_name: params[:food_name],
                calorie: params[:food_calorie],
                sort: params[:food_sort]
                )
                
    redirect_to '/foods/show'
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end