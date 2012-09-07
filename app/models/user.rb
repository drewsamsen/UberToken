class User < ActiveRecord::Base
	validates :name, :presence => true
	has_many :assignments
	has_many :projects, :through => :assignments
	attr_accessible :avatar, :name, :email
	has_attached_file :avatar,
				:styles => { :medium => "40x40>", :thumb => "16x16>" },
				# :path => ":rails_root/public/system/:class/:id/:style/:basename.:extension",
				:path => ":rails_root/app/assets/images/:class/:id/:style/:basename.:extension",
				:default_url => '/images/missing_:style.png',
				:storage => :s3,
		    :s3_credentials => {
		      :bucket            => 'ubertoken',
		      :access_key_id     => 'AKIAISNOYZRDGVQSRHNA',
		      :secret_access_key => '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'
		    }


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
