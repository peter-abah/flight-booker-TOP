class RemoveFieldFromBookingsAndAddFieldToPassengers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :passenger, index: true, foreign_key: true
    add_reference :passengers, :booking, index: true, foreign_key: true
  end
end
