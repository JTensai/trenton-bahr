class ViewableController < ApplicationController
	before_filter :authorize, only: [:database, :events_page]

	def home
        @seniors = Testimonial.where(live: true).where(category: "Seniors").sample(n=1)
		@families = Testimonial.where(live: true).where(category: "Families").sample(n=1)
		@others = Testimonial.where(live: true).where(category: "Others").sample(n=1)
        @downloads = Download.all(order: 'name')
        @rotating_images = RotatingImage.where(live: true).all(order: "sort_order")  
	end

    def newsletter
        @newsletter = Newsletter.order("updated_at desc").limit(1)

        send_data(@newsletter.first.file.read,
            filename: 'trenton_bahr_newsletter ('+ @newsletter.first.updated_at.strftime("%B %e, %Y")+')',
            type: 'application/pdf',
            disposition: 'attachment',
            url_based_filename: true)
    end

	def about		
    	@trenton = Trenton.first
    	@employees = Employee.where(current: true).all(order: 'sort_order')
    end

    def charities
	    @charity = CharityOfTheMonth.first
	    @past_charities = OurCharity.all(order: 'sort_order')
	end

    def gallery
    	@images_by_category = GalleryImage.find_all_by_category(params[:category].gsub('/','%2F'), order: "sort_order")    	
    end

    def session_information
    	@session_info = SessionInfo.first
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

    def events_page
	    @all_events = Event.all
	    @events = []
	    @all_events.each do |e|
	    	if e.date.future?
	    		@events << e
	    	end
	    end
    end

    def colors
    	@downloads = Download.all(order: 'name')
    end

end