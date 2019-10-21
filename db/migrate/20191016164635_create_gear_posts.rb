class CreateGearPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :gear_posts do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
