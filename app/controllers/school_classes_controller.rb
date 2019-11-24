class SchoolClassesController < ApplicationController
    
    def show
        @school_classes = SchoolClass.find(params[:id])
    end
    
    def new
        @school_classes = SchoolClass.new
    end
    
    def create
        @school_classes = SchoolClass.new(school_class_params)
        @school_classes.save
        redirect_to school_class_path(@school_classes)
    end

    def edit
        @school_classes = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end


    private

    def school_class_params
        params.require(:school_class).permit!
    end
end
