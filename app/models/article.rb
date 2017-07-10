class Article < ApplicationRecord
    has_attached_file :thumbnail,
    :path => "/home/ubuntu/workspace/blog/app/assets/images/:class/:id/:style/:basename.:extension",
    :url => "/article/:attachment/:id/:basename_:style.:extension",
    :styles => { 
        :homepage => ['480x480#', :jpg, :quality => 100]
    }
     # Article form validations
    validates :title, presence: true
    validates :text, presence: true
    validates :average_color, presence: true
    validates_attachment :thumbnail,
                        content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                        presense: true
end
