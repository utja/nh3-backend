require 'csv'
data = CSV.read("restaurant_data.csv", {headers: :true, header_converters: :symbol})
new_data = data.map do |row|
  row.to_h
end

new_data.each do |row|
  Restaurant.create(row)
end