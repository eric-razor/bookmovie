class AddFranchiseToWorks < ActiveRecord::Migration[5.2]
  def change
    add_reference :works, :franchise, foreign_key: true
  end
end
