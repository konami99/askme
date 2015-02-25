class LikedAnswer < ActiveRecord::Base
  belongs_to :answer
  belongs_to :user
end
