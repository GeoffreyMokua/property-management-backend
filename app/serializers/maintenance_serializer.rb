class MaintenanceSerializer < ActiveModel::Serializer
  attributes :id, :house_id, :tenant_id, :date_requested, :date_completed, :description
  belongs_to :house
end
