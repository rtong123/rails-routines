class RoutinesController < ApplicationController
  def index
    @routines = Routine.all
  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.create(routine_params)
    @routine.save!
    binding.pry
    redirect_to new_product_path
  end

  def edit
    @routine = Routine.find_by(params[:id])
  end

private

  def routine_params
    params.require(:routine).permit(:category, :title, :step, :user_id)
  end

end
