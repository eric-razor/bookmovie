class Vote < ApplicationRecord
  belongs_to :work
  belongs_to :user
  #will get the work and user_id because it belongs_to 

#  @vote_count = 0

end
