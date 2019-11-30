class StudentsController < ApplicationController
  before_action :show_all, only: [:index]
  before_action :find_student, only: [:show, :edit, :update]
  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_strong_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
  end

  def edit
  end

  def update
    # byebug
    @student.update(student_strong_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end
  private
    def show_all
      @students = Student.all
    end
    def find_student
      @student = Student.find(params[:id])
    end
    def student_strong_params(*args)
      params.require(:student).permit(*args)
    end
end
