class Franchise < ApplicationRecord
  has_many :media
  has_many :votes, through: :media
end
