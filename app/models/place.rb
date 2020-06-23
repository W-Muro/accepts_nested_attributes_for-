class Place < ApplicationRecord
    has_many :work_places, dependent: :destroy
    has_many :works, :through => :work_places
end
