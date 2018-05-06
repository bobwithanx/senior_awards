class AddAdvisoryAndCounselorToStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :advisory, index: true, foreign_key: true
    add_reference :students, :counselor, index: true, foreign_key: true
  end
end
