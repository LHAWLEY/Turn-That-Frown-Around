class Comment < ActiveRecord::Base
  belongs_to :video
  belongs_to :commentor, class_name: "User", foreign_key: :user_id

  validates :user_id, :video_id, :body, presence: true
end
