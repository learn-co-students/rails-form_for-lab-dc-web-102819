class SchoolClassesController < ApplicationController
    def create
       @school_class = SchoolClass.create(set_params(:title, :room_number))
       @school_class.save
       redirect_to school_class_path(@school_class)
    end

    def new
        @school_class = SchoolClass.new
    end

    def show
        get_instance
    end

    def edit
        get_instance
    end

    def update
        get_instance
        @school_class.update(set_params(:title, :room_number))
        redirect_to school_class_path
    end

    private

    def set_params(*args)
        params.require(:school_class).permit(*args)        
    end

    def get_instance
        @school_class = SchoolClass.find(params[:id])
    end
end
