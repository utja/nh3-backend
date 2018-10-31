class SpecialSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_time, :end_time, :day_id
  has_one :restaurant
end
