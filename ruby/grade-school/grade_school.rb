class School
  
  def initialize
    @students = Hash.new()
  end

  def add (student, grade)
    @students[student]=grade
  end

  def students(grade)
    @students.select{|key, value| key if value==grade}.keys.sort
  end

  def students_by_grade
   @students.values.sort.uniq.map { |grade| {grade: grade, students: students(grade)}}
  end

end

module BookKeeping
  VERSION = 3
end