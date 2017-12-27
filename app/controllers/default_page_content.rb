module DefaultPageContent
	extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end

  	def set_page_defaults
  		@page_title = "Welcome | My Portofolio"
  		@seo_keywords = "Vern Kofford portfolio"
  	end
end