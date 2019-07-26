class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    @courses = @student.get_courses
  end

end
