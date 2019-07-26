require "rails_helper"

  RSpec.describe "Student Show Page" do
    before :each do
      @Jerry = Student.create!(name: "Jerry")
      @Hailee = Student.create!(name: "Hailee")
      @Katy = Student.create!(name: "Katy")
      @Chemistry = Course.create!(name: "Chemistry")
      @Physics = Course.create!(name: "Physics")
      @Calculus = Course.create!(name: "Calculus")
      @ExerciseScience = Course.create!(name: "Exercise Science")

      @Student_course1 = @Chemistry.student_courses.create!(student_id: @Katy.id, grade: 98.2 )
      @Student_course2 = @Physics.student_courses.create!(student_id: @Katy.id, grade: 88.6 )
      @Student_course3 = @Calculus.student_courses.create!(student_id: @Katy.id, grade: 94.8 )

      @Student_course4 = @Chemistry.student_courses.create!(student_id: @Hailee.id, grade: 88.3 )
      @Student_course5 = @Physics.student_courses.create!(student_id: @Hailee.id, grade: 98.2 )
      @Student_course6 = @Calculus.student_courses.create!(student_id: @Hailee.id, grade: 99 )
      @Student_course7 = @ExerciseScience.student_courses.create!(student_id: @Hailee.id, grade: 95.0 )

      @Student_course8 = @Chemistry.student_courses.create!(student_id: @Jerry.id, grade: 100 )
      @Student_course9 = @Physics.student_courses.create!(student_id: @Jerry.id, grade: 91.2  )
      @Student_course10 = @Calculus.student_courses.create!(student_id: @Jerry.id, grade: 77.9 )
      @Student_course11 = @ExerciseScience.student_courses.create!(student_id: @Jerry.id, grade: 55.4 )

    end

    it "User visits a student show page" do
      visit courses_path

      expect(current_path).to eq(courses_path)

      expect(page).to have_content("All Courses")
      expect(page).to have_content("Chemistry: Jerry - 100.0% Katy - 98.2% Hailee - 88.3% ")
      expect(page).to have_content("Physics")
      expect(page).to have_content("Calculus")
      expect(page).to have_content("Exercise Science")
    end

  end




# User Story 2, Course Index Page
# As a user,
# When I visit a course index page,
# Then I see each course in the system including:
# - the course's name
# - each student in the course listed in order from highest grade to lowest grade
