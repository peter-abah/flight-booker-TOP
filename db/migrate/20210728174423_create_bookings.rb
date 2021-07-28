class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :flight, index: true, foreign_key: true
      t.references :passenger, index: true, foreign_key: true

      t.timestamps
    end
  end
end
