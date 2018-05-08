class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def queue
    @students = Student.where('queued_at is not null').order(queued_at: :asc)
  end

  def show
    @student = Student.find(params[:id])
  end

  def queued_popup
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

  def undo_link
    view_context.link_to('undo', dequeue_student_url(@student), :method=> :post)
  end

  def enqueue
    @student = Student.find(params[:id])
    @student.queued_at = Time.now

    if @student.save
      flash[:success] = "Student queued. #{undo_link}"
    else
      flash[:danger] = "ERROR<p>Item was not returned.</p>"
    end
    redirect_to students_path
  end

  def dequeue
    @student = Student.find(params[:id])
    @student.queued_at = nil

    if @student.save
      flash[:success] = "Student dequeued."
    else
      flash[:danger] = "ERROR<p>Item was not returned.</p>"
    end
    redirect_to students_path
  end

  private
    def student_params
      params.require(:student).permit(:firstname, :lastname, :id_number, :blurb, :queued_at)
    end
end
