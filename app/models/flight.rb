class Flight < ApplicationRecord
  belongs_to :to_airport, class_name: 'Airport', foreign_key: :to_airport_id
  belongs_to :from_airport, class_name: 'Airport', foreign_key: :from_airport_id

  has_many :bookings

  def formatted_date
    date.strftime('%d-%m-%Y')
  end

  def pretty_print
    "FLIGHT##{id} #{from_airport.code} -> #{to_airport.code} ON #{formatted_date}"
  end
end
