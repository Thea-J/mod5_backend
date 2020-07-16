class BusinessOwner < ApplicationRecord
    has_many :businesses, dependent: :destroy
end
