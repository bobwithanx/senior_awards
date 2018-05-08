class AddCompletedAtToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :completed_at, :timestamp
  end
end
