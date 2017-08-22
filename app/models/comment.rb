class Comment < ApplicationRecord
  
  belongs_to :article
  belongs_to :user
  has_many :votes, dependent: :destroy
  
  
  # Validations
  
  validates :body, presence: true
  validates :commenter, presence: true
  validates :article_id, presence: true
  validates :user_id, presence: true
  
  private
    
    def score
      votes.count
    end
  
end