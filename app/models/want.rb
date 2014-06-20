class Want < ActiveRecord::Base
	belongs_to :user, foreign_key: :wanting_user_id

	validates_uniqueness_of :wanting_user_id, :scope => :wanted_user_id
end
