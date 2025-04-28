class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :image_location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
