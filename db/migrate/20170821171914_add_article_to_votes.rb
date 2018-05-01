class AddArticleToVotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :votes, :article, foreign_key: true
  end
end