# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
