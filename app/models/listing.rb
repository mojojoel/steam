class Listing < ActiveRecord::Base
	belongs_to :user

	# def self.approved
	# 	where(:approved => true)
	# end

	# def self.admin_view
	# 	Listing.all.order('price > 200 and approved = false').reverse.paginate(:page => params[:page], :per_page => 2)

	# end

	# def self.user_view
	# 	Listing.where('price < 200.00 or approved = true').order('name')
	# end
end
