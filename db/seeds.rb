# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

Airport.delete_all
Airport.create([{ code: 'LAG' }, { code: 'ABJ' }, { code: 'NYC' }, { code: 'PAR' },
                { code: 'PHC' }])


Flight.delete_all

start = Airport.first.id
last = Airport.last.id

# gets the permutation of the all the airports id
permutations = (start..last).to_a.permutation(2)


permutations.each_with_index do |(to_id, from_id), i|
  # sets time(in minutes) for duration of flights based on the index in the array
  # did this to make the duration of the flights a little different

  duration = i.even? ? 180 : 90
  duration = 120 if (i % 3).zero?

  date = Date.today + i.day

  Flight.create(to_airport_id: to_id, from_airport_id: from_id, duration: duration,
                date: date)
end
