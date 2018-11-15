class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip_code, :phone, :image, :website
  has_many :specials
end
