class Project < ActiveRecord::Base
	validates :name, :presence => true
	attr_accessible :name, :user_tokens
	has_many :assignments
	has_many :users, :through => :assignments
	attr_reader :user_tokens

	def user_tokens=(tokens)
		self.user_ids = User.ids_from_tokens(tokens)
	end
end
