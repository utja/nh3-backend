require 'csv'

restaurant_data = CSV.read("restaurants_data.csv", {headers: :true, header_converters: :symbol})

all_restaurants = restaurant_data.map do |row|
  row.to_h
end

all_restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end

require 'csv'

specials_data = CSV.read("specials_data.csv", {headers: :true, header_converters: :symbol})

all_specials = specials_data.map do |row|
  row.to_h
end

all_specials.each do |special|
  Special.create(special)
end