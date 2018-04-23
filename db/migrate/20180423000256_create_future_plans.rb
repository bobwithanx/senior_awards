class CreateFuturePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :future_plans do |t|
      t.string :name

      t.timestamps
    end
  end
end
