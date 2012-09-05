class Project < ActiveRecord::Base
	validates :name, :presence => true
	has_many :assignments
	has_many :users, :through => :assignments
end
