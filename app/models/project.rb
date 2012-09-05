class Project < ActiveRecord::Base
	validates :name, :presence => true
	attr_accessible :name, :user_tokens
	has_many :assignments
	has_many :users, :through => :assignments
	attr_reader :user_tokens

	def user_tokens=(ids)
		self.user_ids = ids.split(",")
	end
end
