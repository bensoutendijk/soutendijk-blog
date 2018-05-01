class Article < ApplicationRecord
     
    belongs_to :user
    has_many :votes, as: :votable
    has_many :comments, as: :commentable
    
    # Article form validations
    validates :title, presence: true
    validates :body, presence: true
                        
  # The votable's score is the sum of the weights of each of the most recently submitted votes by user
  def score
    res = 0
    self.votes.all.each do |a|
      res += a.weight
    end
    res
  end
end
