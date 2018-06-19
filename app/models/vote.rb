class Vote < ApplicationRecord
  belongs_to :user, :medium
end
