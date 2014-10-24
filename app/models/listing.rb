class Listing < ActiveRecord::Base
	belongs_to :user

	# def self.filter
	# 	where(:price =>  0..200)
	# end
end
