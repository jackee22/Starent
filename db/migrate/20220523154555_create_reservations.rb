class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :star, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :status,  default: false

      t.timestamps
    end
  end
end
