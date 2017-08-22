class Vote < ApplicationRecord
  
  belongs_to :comment
  belongs_to :user
  belongs_to :article
  
  # Validations
  
  validates :user_xor_article_xor_comment, presence: true
  validates :type, presence: true
  
  private
  
    def user_xor_article_xor_comment
      unless user_id.blank? ^ article_id.blank? ^ comment_id.blank?
        errors.add(:base, "Vote could not be processed")
      end
    end
  
end
