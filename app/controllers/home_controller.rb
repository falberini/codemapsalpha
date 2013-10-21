class HomeController < ApplicationController

	def index
		@offline_schools = OffineSchool(1)
	end

end
