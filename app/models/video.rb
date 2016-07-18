class Video < ActiveRecord::Base
  belongs_to :author, class_name: "User", foreign_key: :user_id
  has_many   :comments
  has_many   :votes

  before_create :format_link

  validates :link, :title, :description, :user_id, presence: true

  private

  def format_link
    link.gsub!(/.*\//, '')
  end
end
