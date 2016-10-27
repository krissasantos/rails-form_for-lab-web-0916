class SchoolClassesController < ApplicationController


  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

   def edit
    @school_class = SchoolClass.find(params[:id])
    # redirect_to school_class_path(@school_class)
  end

  def create
    # @school_class = SchoolClass.create(title: params[:title], room_number: params[:room_number] )
    # use 'new' over 'save'
    # so you can check if that 'NEW' instance is valid without touching your db
    @school_class = SchoolClass.new(params.require(:school_class)) #WHY??
    # @school_class = SchoolClass.new
    @school_class.save #if @school_class.valid?
    redirect_to school_class_path(@school_class)
  end



  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end
end