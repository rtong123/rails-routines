class RoutinesController < ApplicationController
  def index
    @routines = Routine.all
  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.create(routine_params)
  end

  def edit
    @routine = Routine.find_by(params[:id])
  end

private

  def routine_params
    params.require(:routine).permit(:category, :title, :step)
  end

end
