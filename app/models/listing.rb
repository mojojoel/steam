class Listing < ActiveRecord::Base
	belongs_to :user

	# def self.approved
	# 	where(:approved => true)
	# end
end
