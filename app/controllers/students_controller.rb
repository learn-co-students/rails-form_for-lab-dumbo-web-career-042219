class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    # debugger
    student = Student.create(first_name: params[:student_first_name], last_name: params[:student_last_name])
    redirect_to student_path(student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    # debugger
    @student.update(first_name: params[:student_first_name], last_name: params[:student_last_name])
    redirect_to student_path(@student)
  end

  # def student_params
  #   params.require(:student).permit(:student_first_name, :student_last_name)
  # end 
end 