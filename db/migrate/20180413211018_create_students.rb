class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :id_number
      t.text :blurb

      t.timestamps
    end
  end
end
