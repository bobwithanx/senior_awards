class CreateJoinTableStudentsAdvisories < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :advisories do |t|
      # t.index [:student_id, :advisory_id]
      # t.index [:advisory_id, :student_id]
    end
  end
end
