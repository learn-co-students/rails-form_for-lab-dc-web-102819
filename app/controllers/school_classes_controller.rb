class SchoolClassesController < ApplicationController

	before_action :find_class, only: [:show, :edit, :update]

	def index

	end

	def show

	end

	def new
		@school_class = SchoolClass.new
	end

	def create
		school_class = SchoolClass.create(classes_params)

		redirect_to school_class_path(school_class)
	end

	def edit

	end

	def update
		school_class = SchoolClass.update(classes_params)

		redirect_to school_class_path(school_class)
	end

	private 
		def classes_params
			params.require(:school_class).permit(:title,:room_number)
		end

		def find_class
			@school_class = SchoolClass.find(params[:id])
		end
end
