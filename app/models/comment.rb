class Comment < ApplicationRecord
  belongs_to :user, :work
end
