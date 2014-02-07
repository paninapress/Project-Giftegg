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

    before_save :update_birth_date_fields

    private
    def update_birth_date_fields
      if birthday_changed?
        self.birth_month = birthday ? birthday.month : nil
        self.birth_day = birthday ? birthday.day : nil
      end
    end
end
