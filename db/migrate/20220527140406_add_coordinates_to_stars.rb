class AddCoordinatesToStars < ActiveRecord::Migration[6.1]
  def change
    add_column :stars, :latitude, :float
    add_column :stars, :longitude, :float
  end
end
