class User < ApplicationRecord
  has_many :votes
  has_many :media, through: :votes
end
