class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def popup
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new(student_params)

    @student.save
    redirect_to @student
  end

  private
    def student_params
      params.require(:student).permit(:firstname, :lastname, :id_number, :blurb)
    end
end
