class AddQueuedAtToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :queued_at, :timestamp
  end
end