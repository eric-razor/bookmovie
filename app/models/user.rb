class User < ApplicationRecord
  has_many :votes
  has_many :mediums, through: :votes

  has_secure_password 

end
