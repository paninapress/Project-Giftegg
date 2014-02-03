# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  birthday   :date
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
end
