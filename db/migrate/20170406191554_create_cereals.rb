class CreateCereals < ActiveRecord::Migration[5.0]
  def change
    create_table :cereals do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :sugar_content, null: false

      t.timestamps null: false
    end
  end
end
