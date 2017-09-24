class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true
  belongs_to :user
  
  validates :weight, presence: true
end
