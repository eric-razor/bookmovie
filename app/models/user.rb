class User < ApplicationRecord
  acts_as_voter
  has_many :votes
  has_many :mediums, through: :votes  #good

  has_secure_password

end
