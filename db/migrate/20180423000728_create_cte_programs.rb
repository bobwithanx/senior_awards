class CreateCtePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :cte_programs do |t|
      t.string :name

      t.timestamps
    end
  end
end
