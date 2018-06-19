class Medium < ApplicationRecord
  has_many :user
  has_many :vote, through: :users
end
