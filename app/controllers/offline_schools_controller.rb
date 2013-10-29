class OfflineSchoolsController < ApplicationController
	include OfflineSchoolsHelper
	
	def index
		@offline_schools = OfflineSchool.all
		respond_to do |format| #restful technique to 
			format.html
			format.json {  
				@lat = params[:lat]
				@lng = params[:lng]
				render json: OfflineSchool.near([@lat, @lng], 50, :order => :distance)
			}
		end
	end

	def new
		getLatlng(params[:search_term]);
	end

end

