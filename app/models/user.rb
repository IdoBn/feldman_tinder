class User < ActiveRecord::Base
	has_many :wants, foreign_key: :wanting_user_id
	has_many :wanted_by, :class => Want , foreign_key: :wanted_user_id

	def matches
		arr = []
		user_id = self.id
		self.wants.each do |want|
			user = User.find(want.wanted_user_id)
			if user.wants.map(&:wanted_user_id).include?(user_id)
				arr << user
			end
		end
		arr
	end

	def want!(wanted_user_id)
		self.wants.create(wanted_user_id: wanted_user_id)
	end

	# def wants?
		
	# end

	def self.from_omniauth(auth)
	  where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
	    user.provider = auth.provider
	    user.uid = auth.uid
	    user.name = auth.info.name
	    user.email = auth.info.email
	    user.gender = auth.extra.raw_info.gender
	    user.oauth_token = auth.credentials.token
	    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
	    user.save!
	  end
	end
end
