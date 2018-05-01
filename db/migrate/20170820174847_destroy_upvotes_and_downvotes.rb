class DestroyUpvotesAndDownvotes < ActiveRecord::Migration[5.0]
  def change
    drop_table :upvotes
    drop_table :downvotes
  end
end