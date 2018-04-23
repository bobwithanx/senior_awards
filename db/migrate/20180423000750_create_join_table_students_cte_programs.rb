class CreateJoinTableStudentsCtePrograms < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :cte_programs do |t|
      # t.index [:student_id, :cte_program_id]
      # t.index [:cte_program_id, :student_id]
    end
  end
end
