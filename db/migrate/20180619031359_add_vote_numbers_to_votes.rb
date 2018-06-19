class AddVoteNumbersToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :vote_numbers, :integer
  end
end
