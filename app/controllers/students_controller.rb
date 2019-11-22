class StudentsController < ApplicationController

	before_action :find_student, only: [:show, :edit, :update]
	def index

	end

	def show

	end

	def new
		@student = Student.new
	end

	def create
		student = Student.create(students_params)

		redirect_to student_path(student)
	end

	def edit

	end

	def update
		@student.update(students_params)

		redirect_to student_path(@student)
	end

	private

	def find_student
		@student = Student.find(params[:id])
	end

	def students_params
		params.require(:student).permit(:first_name, :last_name)
	end

end