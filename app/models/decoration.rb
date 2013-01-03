class Decoration < ActiveRecord::Base
	attr_accessible :name, :year, :zone_id 
	validates :name,  :presence => true,:uniqueness => true
	validates :year,  :presence => true
	validates_attachment_content_type :expense, :content_type => ['application/excel','application/vnd.ms-excel','application/
	vnd.msexcel']
	attr_accessible :expense
    has_attached_file :expense
    has_many:tasks

end
