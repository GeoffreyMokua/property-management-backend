class House < ApplicationRecord
    belongs_to :tenant
    has_many :maintenances
end
