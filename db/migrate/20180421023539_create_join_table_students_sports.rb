class CreateJoinTableStudentsSports < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :sports do |t|
      # t.index [:student_id, :sport_id]
      # t.index [:sport_id, :student_id]
    end
  end
end
