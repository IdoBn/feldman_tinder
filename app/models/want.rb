class Want < ActiveRecord::Base
	belongs_to :user, foreign_key: :wanting_user_id
end
