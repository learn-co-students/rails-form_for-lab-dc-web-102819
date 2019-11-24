class SchoolClassesController < ApplicationController

	def index
		@classes = SchoolClass.all
	end

	def show
		@course = SchoolClass.find(params[:id])
	end

	def new
		@course = SchoolClass.new
	end

	def create
		course = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
		redirect_to school_class_path(course)
	end

	def edit
		@course = SchoolClass.find(params[:id])
	end

	def update
		course = SchoolClass.find(params[:id])
		course.update(params.require(:school_class).permit(:title, :room_number))
		redirect_to school_class_path(course)
	end

end
