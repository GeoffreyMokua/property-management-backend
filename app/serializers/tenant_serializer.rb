class TenantSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :house_id, :move_in_date, :lease_term, :security_deposit, :rent_status
end
