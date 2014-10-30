class Listing < ActiveRecord::Base
	belongs_to :user
	validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than_or_equal_to => 0.01}

	# def self.approved
	# 	where(:approved => true)
	# end

	# def self.admin_view
	# 	Listing.all.order('price > 200 and approved = false').reverse.paginate(:page => params[:page], :per_page => 2)

	# end

	# def self.user_view
	# 	Listing.where('price < 200.00 or approved = true').order('name')
	# end

	def self.search(search)
		if search
    		where('name ILIKE ?', "%#{search}%")
 		else
    		all
  		end
	end

	# def self.owned
	# 	Listing.where('user_id = current_user.id')
	# end
end
