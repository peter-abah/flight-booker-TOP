# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

Flight.delete_all
Airport.delete_all

Airport.create([{ code: 'LAG' }, { code: 'ABJ' }, { code: 'NYC' }, { code: 'PAR' },
                { code: 'PHC' }])

airports = Airport.all
1000.times do
  to_airport, from_airport = airports.sample(2)
  date = rand(Date.new(2021, 8, 4)..Date.new(2021, 8, 14))
  duration = rand(60..320)

  Flight.create(to_airport: to_airport, from_airport: from_airport,
                date: date, duration: duration)
end
