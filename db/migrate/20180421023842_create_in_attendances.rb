class CreateInAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :in_attendances do |t|
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
