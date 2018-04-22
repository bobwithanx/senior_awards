class CreateJoinTableStudentsInAttendance < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :in_attendances do |t|
      # t.index [:student_id, :in_attendance_id]
      # t.index [:in_attendance_id, :student_id]
    end
  end
end
