class Comment < ApplicationRecord
  
  belongs_to :article
  has_many :votes
  
end
