class Flight < ApplicationRecord
  belongs_to :to_airport, class_name: 'Airport', foreign_key: :to_airport_id
  belongs_to :from_airport, class_name: 'Airport', foreign_key: :from_airport_id

  def formatted_date
    date.strftime('%d-%m-%Y')
  end
end
