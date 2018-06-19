class Medium < ApplicationRecord

    belongs_to :franchise
    has_many :votes, through: :users
end
