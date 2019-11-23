class StudentsController < ApplicationController
    def create
        @student = Student.create(set_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def new
        @student = Student.new
    end

    def show
        get_instance
    end

    def edit
        get_instance
    end

    def update
        get_instance
        @student.update(set_params(:first_name, :last_name))
        redirect_to student_path
    end
    
    private
 
    def set_params(*args)
        params.require(:student).permit(*args)        
    end

    def get_instance
        @student = Student.find(params[:id])
    end
end
