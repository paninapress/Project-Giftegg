# == Schema Information
#
# Table name: giftees
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  birthday   :date
#  relation   :string(255)
#  notes      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Giftee < ActiveRecord::Base
    belongs_to :user
end
