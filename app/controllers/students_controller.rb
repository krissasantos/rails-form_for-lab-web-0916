
# class StudentsController < ApplicationController
#   def show
#     @student = Student.find(params[:id])
#   end

#   def new
#     @student = Student.new
#   end

#   def edit
#     @student = Student.find(params[:id])
#   end

#   def create
#     @student = Student.new(params.require(:student))
#     @student.save
#     redirect_to student_path(@student)
#   end

#   def update
#     @student = Student.find(params[:id])
#     @student.update(params.require(:student))
#     redirect_to student_path(@student)
#   end
# end
class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])

  end
  def new
    @student = Student.new
  end

  def create

    # @student = Student.create(title: params[:title], room_number: params[:room_number] )
    # use 'new' over 'save'
    # so you can check if that 'NEW' instance is valid without touching your db
    @student = Student.new(params.require(:student)) #WHY??
    # @student = Student.new
    @student.save #if @student.valid?
    
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
    # redirect_to student_path(@student) #shouldnt be here.just like your show page. it implicitly renders the show page/edit page in this case. you only redirect in the update action.
  end

  

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end
end