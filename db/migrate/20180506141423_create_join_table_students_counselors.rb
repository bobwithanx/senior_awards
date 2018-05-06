class CreateJoinTableStudentsCounselors < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :counselors do |t|
      # t.index [:student_id, :counselor_id]
      # t.index [:counselor_id, :student_id]
    end
  end
end
