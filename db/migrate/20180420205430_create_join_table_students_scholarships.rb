class CreateJoinTableStudentsScholarships < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :scholarships do |t|
      # t.index [:student_id, :scholarship_id]
      # t.index [:scholarship_id, :student_id]
    end
  end
end
