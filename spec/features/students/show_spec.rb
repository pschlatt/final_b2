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

    end

    it "User visits a student show page" do
      visit student_path(@Katy)

      expect(current_path).to eq(student_path(@Katy))

      expect(page).to have_content(@Katy.name)
      expect(page).to have_content("Chemistry: 98.2%")
      expect(page).to have_content("Physics: 88.6%")
      expect(page).to have_content("Calculus: 94.8%")
      expect(page).to_not have_content("Exercise Science")
    end

  end
