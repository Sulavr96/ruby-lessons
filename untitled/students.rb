class Student
  attr_reader :name,:roll_number
  def initialize name,roll_number
    @name=name
    @roll_number=roll_number
  end
end
  class Subject
    attr_reader :subject_name
    def initialize subject_name
      @subject_name=subject_name


    end

    end


class Exam
  attr_reader :exam_name,:students,:answer_sheet
  def initialize exam_name,students,answer_sheet
    @exam_name=exam_name
    @students=students
    @answer_sheet=answer_sheet

  end
  end

class AnswerSheet
  def initialize roll_number,subject,marks
    @roll_number=roll_number

    @subject=subject
    @marks=marks

  end

end
students=[]
(1..40).each do |roll_number|
students.push(Student.new("student #{roll_number}",roll_number))
end
students.each do |student_object|
  student_object.name
  student_object.roll_number

end
exams=[]
answer_sheet=[]
subject_marks_array=[]
subject_marks_array_collection=[]
(1..3).each do|subject_name|
  subject_marks_array=[]
  students.each do|student_object|
    subject_marks=Random.rand(40..100)
    answer_sheet.push(AnswerSheet.new(student_object.roll_number,subject_name,subject_marks))
    subject_marks_array.push(subject_marks)
  end


subject_marks_array_collection.push(subject_marks_array)
end
subject1_topper_marks=subject_marks_array_collection[0].max


subject2_topper_marks=subject_marks_array_collection[1].max

subject3_topper_marks=subject_marks_array_collection[2].max
"Subject3 topper  #{subject3_topper_marks}"
topper1=subject_marks_array_collection[0].each_index.select{ |i| subject_marks_array_collection[0][i] == subject1_topper_marks}
topper2 = subject_marks_array_collection[1].each_index.select{ |i| subject_marks_array_collection[1][i] == subject2_topper_marks}
topper3=subject_marks_array_collection[2].each_index.select{ |i| subject_marks_array_collection[2][i] == subject3_topper_marks}


topper1.each do |topper|
  puts "Subject 1 Highest marks: #{subject1_topper_marks}  topper " + students[topper].name
end

topper2.each do |topper|
  puts "Subject 2 Highest marks:#{subject2_topper_marks} topper "+ students[topper].name
end

topper3.each do |topper|
  puts "Subject 3 Highest marks:#{subject3_topper_marks} topper " + students[topper].name
end
total_marks_array = []
(0..39).each do |subject_marks|
  total_marks = subject_marks_array_collection[0][subject_marks] + subject_marks_array_collection[1][subject_marks] + subject_marks_array_collection[2][subject_marks]
  total_marks_array.push(total_marks)
end

topper_marks = total_marks_array.max
topper_student=total_marks_array.each_index.select{ |i| total_marks_array[i] == topper_marks}

topper_student.each do |topper|
puts students[topper].name
end




