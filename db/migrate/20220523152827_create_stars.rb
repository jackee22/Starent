class CreateStars < ActiveRecord::Migration[6.1]
  def change
    create_table :stars do |t|
      t.string :name
      t.string :category
      t.string :country
      t.string :city
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
