class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :comments
  has_many :articles

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def has_voted_on votable
    votes = Vote.where(user_id: self.id, votable_type: votable.class.name, votable_id: votable.id)
    if !!votes.last
      votes.last
    else
      Vote.new
    end
  end
end