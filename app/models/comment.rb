class Comment < ActiveRecord::Base
belongs_to :idea
validates :idea, :body, :user_name, presence: true
end
