class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :body, null: false

      t.belongs_to :cereal
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
