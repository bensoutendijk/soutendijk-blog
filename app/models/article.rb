class Article < ApplicationRecord
    
    has_attached_file :thumbnail,
    :path => "/home/ubuntu/workspace/blog/app/assets/images/:class/:id/:style/:basename.:extension",
    :url => "/article/:attachment/:id/:basename_:style.:extension",
    :styles => { 
        :homepage => ['640x360#', :png, :quality => 100]
     }
     
    belongs_to :user
    has_many :votes, as: :votable
    has_many :comments, as: :commentable
    
    # Article form validations
    validates :title, presence: true
    validates :text, presence: true
    # validates :average_color, presence: true
    validates_attachment :thumbnail,
                        content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
