class Work < ApplicationRecord
  acts_as_votable
    belongs_to :franchise
    has_many :votes
    has_many :users, through: :votes


end
