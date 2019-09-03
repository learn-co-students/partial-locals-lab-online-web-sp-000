class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
  end

  def index
    binding.pry
    @classrooms = Classroom.all
  end
end
