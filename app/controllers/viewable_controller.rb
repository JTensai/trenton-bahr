class ViewableController < ApplicationController

	def home
		@seniors = Testimonial.where(live: true).where(category: "Senior").sample(n=1)
		@families = Testimonial.where(live: true).where(category: "Family").sample(n=1)
		@others = Testimonial.where(live: true).where(category: "Other").sample(n=1)		
    	@downloads = Download.all(order: 'name')
	end

	def about		
    	@trentons = Trenton.first
    end

    def charities
	    @charity = CharityOfTheMonth.first

	    @all_events = Event.all
	    @events = []
	    @all_events.each do |e|
	    	if e.date.future?
	    		@events << e
	    	end
	    end
    end

    def gallery
    	@images_by_category = GalleryImage.find_all_by_category(params[:category], order: "sort_order")    	
    end

    def session_info
    	@downloads = Download.all(order: 'name')
    end

    def download
		@download = Download.find_by_name(params[:name])

		send_data(@download.file.read,
			filename: @download.name.gsub(' ', '_'),
		    type: 'application/pdf',
		    disposition: 'attachment',
		    url_based_filename: true)
    end

    def contact

    end

    def database

    end

end