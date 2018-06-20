class Medium < ApplicationRecord

    belongs_to :franchise
    has_many :votes
    has_many :users, through: :votes
end
