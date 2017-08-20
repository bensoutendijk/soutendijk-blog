class Vote < ApplicationRecord
  
  belongs_to :comment
  belongs_to :user
  belongs_to :article
  
end
