class Comment < ApplicationRecord
  has_many :votes, as: :votable
  belongs_to :article
  belongs_to :user
  
  
  # Validations
  validates :body, presence: true
  
  private
    
    def score
      votes.count
    end
  
end