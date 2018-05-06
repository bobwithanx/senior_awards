class CreateAdvisories < ActiveRecord::Migration[5.1]
  def change
    create_table :advisories do |t|
      t.string :name

      t.timestamps
    end
  end
end
