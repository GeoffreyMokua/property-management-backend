class HouseSerializer < ActiveModel::Serializer
  attributes :id, :house_type, :status, :no_of_bedrooms, :rent, :description, :image
  belongs_to :tenant
  has_many :maintenances
end
