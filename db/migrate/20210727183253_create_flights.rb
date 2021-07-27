class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :to_airport, index: true, foreign_key: { to_table: :airports }
      t.references :from_airport, index: true, foreign_key: { to_table: :airports }
      t.integer :duration
      t.datetime :start_time

      t.timestamps
    end
  end
end
