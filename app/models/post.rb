class Post < ActiveRecord::Base 
    
    belongs_to :user
    has_many :comments
    has_many :likes
    
    validates_presence_of :photo_url, :user
    
    def humanized_time_ago
        time_ago_seconds = Time.now - self.created_at
        time_ago_minutes = time_ago_seconds / 60
        time_ago_hours = time_ago_minutes / 60
        
        if time_ago_hours >= 24
            "#{(time_ago_hours / 24).to_i} days ago"
        elsif time_ago_minutes >= 60
            "#{(time_ago_minutes / 60).to_i} hours ago"
        else
            "#{time_ago_minutes.to_i} minutes ago"
        end
    end
    
    def like_count
        self.likes.size
    end
    
    def like_count_caption
        "#{like_count} #{'like'.pluralize(like_count)}"
    end
    
    
    def comment_count
        self.comments.size
    end
    
    def comment_count_caption
        "#{comment_count} #{'comment'.pluralize(comment_count)}"
    end
    
    
    
    
end

