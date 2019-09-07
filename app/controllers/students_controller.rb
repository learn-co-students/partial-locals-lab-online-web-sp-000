class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to(@student)
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(student_params)
  end

  def update
    @student = Student.find(student_params)
    if @student.update(student_params)
      redirect_to(@student)
    else
      render 'edit'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.search(params[:student_name])
  end

  def student_params
    params.require(:student).permit(:name, :birthday, :hometown)
  end
end
