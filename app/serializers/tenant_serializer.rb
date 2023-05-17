class TenantSerializer < ActiveModel::Serializer
  attributes :id, 
  has_many :houses
end
