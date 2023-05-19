class House < ApplicationRecord
    has_one :tenant
    has_many :maintenances
end
