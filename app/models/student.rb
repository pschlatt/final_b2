class Student < ApplicationRecord
  has_many :student_courses
  has_many :courses, through: :student_courses

  validates_presence_of :name

  def get_courses
    Student.joins(:courses)
           .select("courses.name", "courses.id", "student_courses.grade")
           .where(id: self.id)
  end

  def average_grade
    get_courses.average("student_courses.grade")
  end

end
