class User < ActiveRecord::Base
  has_many :videos
  has_many :comments
  has_many :votes

  validates :email, :password,  presence: true
  validates :email, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def hash
    email_address = email.downcase
    Digest::MD5.hexdigest(email_address)
  end

  def voted_for?(video)
    !!votes.find_by(video_id: video.id)
  end
end