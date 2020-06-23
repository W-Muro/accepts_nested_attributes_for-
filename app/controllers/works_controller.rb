class WorksController < ApplicationController
  def new
    @work = Work.new
    @work.work_places.build
    @places = Place.all
  end

  def create
    binding.pry
    @work = Work.new(work_params)
    @work.save
    redirect_to new_work_path
  end

  def work_params
    params.require(:work).permit(:company, work_places_attributes:[:id,:place_id])
  end

  def show
  end
end
