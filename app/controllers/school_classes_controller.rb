class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
    # byebug
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new(school_params(:title, :room_number))
    @class.save
    redirect_to school_class_path(@class)
  end

  def show
    @class = SchoolClass.find(params[:id])
  end


  def edit
  end

  def update
  end


  private

  def school_params(*args)
    params.require(:school_class).permit(*args)
  end

end
