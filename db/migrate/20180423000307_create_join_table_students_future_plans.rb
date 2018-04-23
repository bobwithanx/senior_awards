class CreateJoinTableStudentsFuturePlans < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :future_plans do |t|
      # t.index [:student_id, :future_plan_id]
      # t.index [:future_plan_id, :student_id]
    end
  end
end
