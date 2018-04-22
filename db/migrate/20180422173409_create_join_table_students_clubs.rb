class CreateJoinTableStudentsClubs < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :clubs do |t|
      # t.index [:student_id, :club_id]
      # t.index [:club_id, :student_id]
    end
  end
end
