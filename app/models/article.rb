class Article < ApplicationRecord
    has_attached_file :thumbnail,
    :path => "/home/ubuntu/workspace/blog/app/assets/images/:class/:id/:style/:basename.:extension",
    :url => "/article/:attachment/:id/:basename_:style.:extension",
    :styles => { 
        :homepage => ['480x480#', :jpg, :quality => 100]
    }
end
