class SchoolClassesController < ApplicationController
  before_action :find_school_class,  only: [:show, :edit, :update]
  before_action :show_all,  only: [:index]
  def index
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_strong_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
  end

  def edit
  end

  def update
    @school_class.update(school_class_strong_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private
    def show_all
      @school_classes = SchoolClass.all
    end
    def find_school_class
      @school_class = SchoolClass.find(params[:id])
    end
    def school_class_strong_params(*args)
      # byebug
      params.require(:school_class).permit(*args)
      # params.require(:school_class).permit(:title, :room_number)
    end
end
