# == Schema Information
#
# Table name: giftees
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  birthday   :date
#  relation   :string(255)
#  notes      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Giftee < ActiveRecord::Base
    belongs_to :user
end
