class Restaurant < ApplicationRecord
  has_many :review
  has_many :rating


end
