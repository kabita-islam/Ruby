class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def student_params
    params.require(:student).permit(:name, :student_id, :department)
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path(@student)
    else
      render "new"
    end   
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

end
