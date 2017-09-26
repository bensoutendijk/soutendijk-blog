class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true
  belongs_to :user
  
  validates :weight, presence: true, :inclusion => { :in => [-1,0,1] }
  validates_uniqueness_of :user_id, :scope => [:votable_type, :votable_id]
  
  def form_control direction, field
    current_vote = self
    
    downvote_off = "downvote"
    downvote_on = downvote_off + " on"
    
    upvote_off = "upvote"
    upvote_on = upvote_off + " on"
    
    if field == "method"
      case current_vote.weight
        when nil
          return "create"
        else 
          return "patch"
      end
    end
      
    case direction
      when 'up'
        case field
          when "value"
            case current_vote.weight
              when 0, nil
                return 1
              when -1
                return 1
              when 1
                return 0
            end
            
          when "class"
            case current_vote.weight
              when 0, nil
                return upvote_off
              when -1
                return upvote_off
              when 1
                return upvote_on
            end
        end
      when 'down'
        case field
          when "value"
            case current_vote.weight
              when 0, nil
                return -1
              when -1
                return 0
              when 1
                return -1
            end
            
          when "class"
            case current_vote.weight
              when 0, nil
                return downvote_off
              when -1
                return downvote_on
              when 1
                return downvote_off
            end
        end

    end
  end    
  
end
