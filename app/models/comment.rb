class Comment < ApplicationRecord
  has_many :votes, as: :votable
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  
  
  # Validations
  validates :body, presence: true
  
  private
    
    def score
      votes.count
    end
  
end