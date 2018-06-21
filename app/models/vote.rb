class Vote < ApplicationRecord
  belongs_to :medium
  belongs_to :user
  #will get the medium and user_id because it belongs_to 

#  @vote_count = 0

end
