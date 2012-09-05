class User < ActiveRecord::Base
	validates :name, :presence => true
	has_many :assignments
	has_many :projects, :through => :assignments
	attr_accessible :avatar, :name
	has_attached_file :avatar, :styles => { :medium => "40x40>", :thumb => "16x16>" }

	def self.tokens(query)
		users = where("name ilike ?", "%#{query}%") 
		if users.empty?
			[{id: "<<<#{query}>>>", name: "New: \"#{query.titlecase}\""}]
		else
			users
		end
	end

	def self.ids_from_tokens(tokens)
		tokens.gsub!(/<<<(.+?)>>>/) {create!(name: $1.titlecase).id }
		tokens.split(",")
	end
end
