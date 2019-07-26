class Course < ApplicationRecord
  has_many :student_courses
  has_many :students, through: :student_courses

  validates_presence_of :name

  def self.get_info
            joins(:students).distinct
            .select("courses.name", "courses.id", "student_courses.grade").group(:id, "student_courses.grade")
            .order('grade DESC')
  end

  def get_students
      students.select("name", "student_courses.grade").order("grade DESC")
  end

end
