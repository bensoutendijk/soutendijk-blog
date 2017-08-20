class Comment < ApplicationRecord
  
  belongs_to :article
  has_many :votes, dependent: :destroy
  
  def score
    votes.count
  end
  
end
