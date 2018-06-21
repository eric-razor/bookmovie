class Franchise < ApplicationRecord
  has_many :works
  has_many :votes, through: :works
end
