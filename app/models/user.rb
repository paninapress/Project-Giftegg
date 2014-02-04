# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  phone           :string(255)
#  birthday        :date
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

class User < ActiveRecord::Base

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  has_many :giftees
  has_secure_password

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
