class ExercisesController < ApplicationController
  def index
    @exercise = Exercise.all
  end

  def new
  end

  def create
    @exercise = Exercise.new
    @exercise.title = params[:exercise_title]
    @exercise.exercise = params[:exercise_exercise]
    @exercise.meal = params[:exercise_meal]
    @exercise.save
    
    redirect_to '/exercises/index'
  end

  def edit
    @exercise = Exercise.find(params[:exercise_id])
  end

  def update
    @exercise = Exercise.find(params[:exercise_id])
    @exercise.title = params[:exercise_title]
    @exercise.exercise = params[:exercise_exercise]
    @exercise.meal = params[:exercise_meal]
    @exercise.save
    
    redirect_to '/exercises/index'
  end

  def destroy
    @exercise = Exercise.find(params[:exercise_id])
    @exercise.destroy
    
    redirect_to '/exercises/index'
  end
end
