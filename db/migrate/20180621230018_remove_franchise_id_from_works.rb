class RemoveFranchiseIdFromWorks < ActiveRecord::Migration[5.2]
  def change
    remove_column :works, :franchise_id
  end
end
