class Task < ActiveRecord::Base
	attr_accessible :name , :decoration_id
	validates :name,  :presence => true
	has_and_belongs_to_many :users
end
