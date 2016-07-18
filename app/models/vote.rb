class Vote < ActiveRecord::Base
  belongs_to :voter, class_name: "User", foreign_key: :user_id
  belongs_to :video

  validates :user_id, :video_id, presence: true
  validates :user_id, uniqueness: { scope: :video_id }  # makes user a user can only vote on a video once.


end
