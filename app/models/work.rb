class Work < ApplicationRecord
    has_many :work_places, dependent: :destroy
    has_many :places, :through => :work_places
    accepts_nested_attributes_for :work_places, allow_destroy: true
end
